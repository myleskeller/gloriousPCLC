from __future__ import print_function
import signal
import sys
from optparse import OptionParser
from simple_websocket_server import WebSocket, WebSocketServer
import socket
import csv


filename = sys.argv[sys.argv.index(next(filter(lambda x: "--filename" in x, sys.argv))) + 1]  
pclc_id = sys.argv[sys.argv.index(next(filter(lambda x: "--pclc_id" in x, sys.argv))) + 1]  
threshold = int(sys.argv[sys.argv.index(next(filter(lambda x: "--threshold" in x, sys.argv))) + 1])
num_clients = int(sys.argv[sys.argv.index(next(filter(lambda x: "--clients" in x, sys.argv))) + 1])

tick_command = "#"
tick_complete = False
awaiting_responses = False
all_clients_connected = False

client_ids = {}
row = []
value = []
data = []


class Server(WebSocket):
    def handle(self):
        global tick_complete
        global awaiting_responses
        global stale_clients
        global all_clients_connected
        global row
        global value

        print(str(self.address[1]) + ": " + self.data)
        # if client is sending unique id,
        if self.data[0] == "!":
            # save the id and addr[1] in a key/val
            addr1 = str(self.address[1])
            unique_id = self.data[1:]
            client_ids[addr1] = unique_id
            # if everyone has finally connected, change flags
            if len(client_ids) == num_clients:
                print("\neveryone connected: ", client_ids,"")
                input("press [Enter] to broadcast initial tick..")
                all_clients_connected = True
                # broadcast tick
                print("\nbroadcasting tick")
                for client in clients:
                    client.send_message(tick_command)
                awaiting_responses = True
                tick_complete = False
        # if everyone is connected and a tick just finished
        elif all_clients_connected and not awaiting_responses and tick_complete:
            # broadcast tick
            print("\nbroadcasting tick")
            for client in clients:
                client.send_message(tick_command)
            # clear values of client_values
            awaiting_responses = True
            tick_complete = False

        # if everyone is connected and we are awaiting responses,
        elif all_clients_connected and awaiting_responses and not tick_complete:
            # collect response
            # print("collecting response")
            addr1 = str(self.address[1])
            result = self.data
            value = (addr1, result)

        # if a valid value was received
        if value != []:
            row.append(value)
            if len(row) == num_clients:
                print("all responses received")
                row.append(None)
                data.append(row)
                # clear row
                row = []
                # broadcast tick
                print("\nbroadcasting tick")
                for client in clients:
                    client.send_message(tick_command)
                awaiting_responses = True
                tick_complete = False

    def connected(self):
        print(str(self.address[1]) + ": connected")
        # for client in clients:
        #     client.send_message(str(self.address[1]) + ": connected")
        clients.append(self)

    def handle_close(self):
        clients.remove(self)
        print(str(self.address[1]) + ": closed")
        # for client in clients:
        #     client.send_message(str(self.address[1]) + ": disconnected")


def translateID(address):
    return client_ids[address]


def writeData2CSV(filename, client_ids, data):
    fields = []
    _client_ids = list(client_ids.keys())
    for _client in _client_ids:
        fields.append(translateID(_client))
    fields.append("alarm") 
    print("\nsaving data to .csv")
    print(fields) 

    client_addr1s = [key for key in client_ids.keys() if client_ids[key] in fields]
    # Create a list to hold the new values
    new_data = []
    # Loop through each row in the data
    for row in data:
        # Create a list to hold the reordered values
        new_row = []
        # Loop through each client address
        for addr in client_addr1s:
            # Find the index of the address in the row
            index = None
            for i, pair in enumerate(row):
                if pair is not None:
                    if pair[0] == addr:
                        index = i
                        break
            # If the address was found, add its value to the new row
            if index is not None:
                new_row.append(row[index][1])
        # Add the boolean value at the end of the row
        new_row.append(checkForAlarm(row[:-1]))
        # Add the new row to the new data list
        new_data.append(new_row)
    # Print the new data structure
    for line in new_data:
        print(line)
    print()

    # writing to csv file
    with open(filename, "w", newline='') as csvfile:
        csvwriter = csv.writer(csvfile)  # creating a csv writer object
        csvwriter.writerow(fields)  # writing the fields
        csvwriter.writerows(new_data)  # writing the data rows


def checkForAlarm(row):
    pclc_val = None    
    # Find the value of the pair with id `pclc_id`
    for pair in row:
        if translateID(pair[0]) == pclc_id:
            pclc_val = float(pair[1])
            break
    # Check if the difference between pclc_val and any other value is greater than 10
    for pair in row:
        if pair[0] != pclc_id:
            try:
                if abs(float(pair[1]) - pclc_val) > threshold:
                    return True
            # it's going to freak out if one of the device id's isn't `pclc_id`
            except TypeError:
                print("Error: pclc device id not found in clients list")
    return False


if __name__ == "__main__":
    parser = OptionParser(usage="usage: %prog [options]", version="%prog 1.0")
    parser.add_option(
        "--host",
        default="127.0.0.1",
        type="string",
        action="store",
        dest="host",
        help="hostname (127.0.0.1)",
    )
    parser.add_option(
        "--port",
        default=8000,
        type="int",
        action="store",
        dest="port",
        help="port (8000)",
    )
    parser.add_option(
        "--clients",
        default=3,
        type="int",
        action="store",
        dest="num_clients",
        help="expected number of clients (3)",
    )
    parser.add_option(
        "--threshold",
        default=10,
        type="int",
        action="store",
        dest="threshold",
        help="threshold of difference between values to trigger alarm (10)",
    )
    parser.add_option(
        "--filename",
        default="out.csv",
        type="string",
        action="store",
        dest="filename",
        help="name of file saved after exiting ('out.csv')",
    )
    parser.add_option(
        "--pclc_id",
        default="out.csv",
        type="string",
        action="store",
        dest="pclc_id",
        help="unique id assigned to device being evaluated ('pclc')",
    )

    (options, args) = parser.parse_args()

    clients = []

    server = WebSocketServer(options.host, options.port, Server)
    print("started websocket server on", options.host,"\n")
    if str(options.host) in {"localhost", "127.0.0.1"}:
        print("remote ip is", socket.gethostbyname(socket.gethostname()))

    def close_sig_handler(signal, frame):
        writeData2CSV(filename, client_ids, data)
        server.close()
        sys.exit()

    signal.signal(signal.SIGINT, close_sig_handler)

    server.serve_forever()

from __future__ import print_function
import signal
import sys
from optparse import OptionParser
from simple_websocket_server import WebSocket, WebSocketServer
import socket


data_delim = ": "


class Server(WebSocket):
    def handle(self):
        print((str(self.address[1]) + data_delim + self.data))
        for client in clients:
            if client != self:
                client.send_message(str(self.address[1]) + data_delim + self.data)

    def connected(self):
        print(str(self.address[1]) + ": connected")
        for client in clients:
            client.send_message(str(self.address[1]) + ": connected")
        clients.append(self)

    def handle_close(self):
        clients.remove(self)
        print(str(self.address[0]) + ": closed")
        for client in clients:
            client.send_message(str(self.address[0]) + ": disconnected")


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

    (options, args) = parser.parse_args()

    clients = []

    server = WebSocketServer(options.host, options.port, Server)
    print("started websocket server on", options.host)
    if str(options.host) in {"localhost", "127.0.0.1"}:
        print("remote ip is", socket.gethostbyname(socket.gethostname()))

    def close_sig_handler(signal, frame):
        server.close()
        sys.exit()

    signal.signal(signal.SIGINT, close_sig_handler)

    server.serve_forever()

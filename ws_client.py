import websocket
import controller
import _thread
import time
import rel
from optparse import OptionParser
import random

tick_command = "#"
id_command = "!"
# data_delim = ": "
connected = False


if __name__ == "__main__":
    parser = OptionParser(usage="usage: %prog [options]", version="%prog 1.0")
    parser.add_option(
        "--port",
        default=8000,
        type="int",
        action="store",
        dest="port",
        help="port (8000)",
    )
    parser.add_option(
        "--hostname",
        default="127.0.0.1",
        type="string",
        action="store",
        dest="host",
        help="hostname/ip (127.0.0.1)",
    )
    parser.add_option(
        "--id",
        default="client",
        type="string",
        action="store",
        dest="id",
        help="unique id (client)",
    )

    (options, args) = parser.parse_args()

url = "ws://" + str(options.host) + ":" + str(options.port)


def runSimulation():
    #! where the guts of the simulation go ------------------------------------
    print("running simulation.")
    insulin = controller.get_insulin(controller.data_flt[controller.k][1], controller.data_flt[controller.k][0], controller.patient)        # carb, glucose, patient object
    return insulin


    #! ------------------------------------------------------------------------


def sendResult(ws, result):
    print("sent result", result, "on websocket.")
    ws.send(str(result)) # casting to string is really important, apparently


def on_message(ws, message):
    print(message)
    if message == tick_command:
        result = runSimulation()
        sendResult(ws, result)
        

def on_error(ws, error):
    print("error: " + str(error))


def on_close(ws, close_status_code, close_msg):
    print("disconnected from "+str(options.host))
    controller.k = 0
    connected = False

def on_open(ws):
    print("connected to "+str(options.host))
    # print("sent",options.id)
    ws.send(id_command+str(options.id)) # letting server know our unique id
    connected = True


if __name__ == "__main__":
    # websocket.enableTrace(True) # for debugging raw websocket data
    ws = websocket.WebSocketApp(
        url,
        on_open=on_open,
        on_message=on_message,
        on_error=on_error,
        on_close=on_close,
    )

    ws.run_forever(
        dispatcher=rel, reconnect=5
    )  # Set dispatcher to automatic reconnection, 5 second reconnect delay if connection closed unexpectedly

    if connected:
        print("awaiting tick command '" + tick_command + "'...")

    rel.signal(2, rel.abort)  # Keyboard Interrupt
    rel.dispatch()

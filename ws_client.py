import websocket
import _thread
import time
import rel
from optparse import OptionParser

tick_command = "#"
data_delim = ": "


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

    (options, args) = parser.parse_args()

url = "ws://" + str(options.host) + ":" + str(options.port)


def runSimulation():
    #! where the guts of the simulation go ------------------------------------
    print("*simulating simulation*")
    return 42
    #! ------------------------------------------------------------------------


def sendResult(ws, result):
    print("sent result", result, "on websocket.")
    ws.send(str(result)) # casting to string is apparently important


def on_message(ws, message):
    print(message)
    if data_delim + tick_command in message:
        #! this happens when a device sends out the tick command---------------
        result = runSimulation()
        sendResult(ws, result)
        #! --------------------------------------------------------------------


def on_error(ws, error):
    print("error: " + str(error))


def on_close(ws, close_status_code, close_msg):
    print("disconnected from "+str(options.host))


def on_open(ws):
    print("connected to "+str(options.host))


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

    print("awaiting tick command '" + tick_command + "'...")

    rel.signal(2, rel.abort)  # Keyboard Interrupt
    rel.dispatch()

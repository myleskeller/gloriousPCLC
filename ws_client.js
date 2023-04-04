const ip = "127.0.0.1" //! ip address of server (PC)
const port = 8000 //! default websocket port
const url = "ws://" + ip + ":" + port + "/"


function onOpen(evt) {
    console.log("connected\n");
}

function onClose(evt) {
    console.log("disconnected\n");
}

function onMessage(evt) {
    console.log(evt.data + '\n');
    //! add additional functionality here if GlucoSym needs to react to messages from the server (PC)
}

function onError(evt) {
    console.log('error:\t' + evt.data + '\n');
    websocket.close();
}

function sendString(message) {
    console.log("sent:\n" + message + '\n');
    websocket.send(message);
}

function disconnect() {
    websocket.close();
}

// initialize websocket server before starting simulation
websocket = new WebSocket(url);
websocket.onopen = function (evt) { onOpen(evt) };
websocket.onclose = function (evt) { onClose(evt) };
websocket.onmessage = function (evt) { onMessage(evt) };
websocket.onerror = function (evt) { onError(evt) };


//! whenever data needs to be sent to the server (PC)..
sendString(GlucoSym_frame) // inject this in place of the console.log()
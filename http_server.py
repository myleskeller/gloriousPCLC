import sys
from optparse import OptionParser
from http.server import HTTPServer, SimpleHTTPRequestHandler
import socket


if __name__ == "__main__":
    parser = OptionParser(usage="usage: %prog [options]", version="%prog 1.0")
    parser.add_option(
        "--port",
        default=8080,
        type="int",
        action="store",
        dest="port",
        help="port (8080)",
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

httpd = HTTPServer((options.host, options.port), SimpleHTTPRequestHandler)
print("started http server on", options.host)
if str(options.host) in {"localhost", "127.0.0.1"}:
    print("remote ip is", socket.gethostbyname(socket.gethostname()))

httpd.serve_forever()
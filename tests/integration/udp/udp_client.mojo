from ff4f00_http.connection import dial_udp
from ff4f00_http.address import UDPAddr
from utils import StringSlice

alias test_string = "Hello, ff4f00!"

fn main() raises:
    print("Dialing UDP server...")
    alias host = "127.0.0.1"
    alias port = 12000
    var udp = dial_udp(host, port)

    print("Sending " + String(len(test_string)) + " messages to the server...")
    for i in range(len(test_string)):
        _ = udp.write_to(String(test_string[i]).as_bytes(), host, port)

        try:
            response, _, _ = udp.read_from(16)
            print("Response received:", StringSlice(unsafe_from_utf8=response))
        except e:
            if String(e) != String("EOF"):
                raise e

use std::{net, thread}; // the whole thing revolves around networking and threading control
const EXPECTED_ADDR: &str =  "127.0.0.1:6969"; // yep, not a typo. I am verry mature.
// fixed size buffers are both more technically challenging and far, far faster
// works with any non-zero buffer size
const READ_BUFF_SIZE: usize = 2;

fn main() {

	// handle server-side connection
	let listener = net::TcpListener::bind(EXPECTED_ADDR).expect("Listener failed to bind");
	for stream in listener.incoming() {
		thread::spawn(move || { // I love that empty threads do not cause any warnings or errors
				handle_client(stream.expect("failed to accept stream"));
		}); // an empty closure is a valid argument
	}
}

// reading mutates the stream by removing the what's read
fn handle_client(mut stream: net::TcpStream) {
	// to prevent blocking preventing exit check
	stream.set_nonblocking(true).expect("failed to set nonblocking mode");
	use std::io::{Read, ErrorKind}; // need Read from io to read from stream
	use std::time::Duration;
	println!("connected to ip: {}", stream.local_addr().expect("failed to get local_address"));
	let mut buffer: [u8; READ_BUFF_SIZE] = [0; READ_BUFF_SIZE];

	{
		let mut bytes_read: usize;
		let mut output: String;
		let mut once: u8 = 0; // I like using int as bool, (DON'T!) sue me!

		loop {
			// read until stream is empty
			bytes_read = match stream.read(&mut buffer) {
				Ok(output) => {output},
				Err(e)     => {
					// WouldBlock just means temporarily unavailable, "try again"
					if e.kind() == ErrorKind::WouldBlock {
						thread::yield_now();
						thread::sleep(Duration::from_millis(5));
						0
					} else {
						panic!(e);
					}
				}
			};
			if once != 0 { // order is optimized: if flag set, break when you reach end
				if bytes_read == 0 {
					break; // when empty close
				}
			} else { // if first time
				if bytes_read == 0 {
					continue; // spin until you get a response
				} else {
					once = 1; // remember you got at least a single response
				}
			}
			// slice in case only a part of the buffer is used
			output = array_to_string(&buffer[0..bytes_read]);
			print!("{}", &output);
		}
	}
	// shut down, we are not reading, therefore there is no point to write more
	stream.shutdown(net::Shutdown::Both).expect("shutdown call failed");
}

// read string from array given by read trait
fn array_to_string(array: &[u8]) -> String {
	let mut output: String = "".to_string(); // init string
	for element in array { // basically pseudo code :)
		output.push(*element as char);
	}
	output
}

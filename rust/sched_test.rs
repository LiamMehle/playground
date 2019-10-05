fn main() {

	let mut n: usize = 0;
	loop {
		print_async(n);
		n += 1;
	}
}

#[inline(always)]
fn print_async(n: usize) {
	use std::{thread, io::ErrorKind};
	match thread::Builder::new().spawn(move || {
		println!("{}", n);
	}) {
		Ok(_) => {()},
		Err(e) => {if e.kind() != ErrorKind::WouldBlock {panic!("what the hell?");} }
	}
}

fn main() {
	let bit = ((std::usize::MAX as f64).ln()/(2 as f64).ln()) as usize;
	let arch_message = match bit {
		128 => "a pc the authro wishes he had",
		256 => "a beast of a pc arch",
		64 => "x86_64 or amd64",
		32 => "x86",
		16 => "16-bit pc",
		8 => "8-bit pc(?)",
		4 => "a potato",
		2 => "a analog watch processor",
		1 => "thin air",
		_ => "something.. probbably",
	};
	println!("arch={}, therefore I'm running on {}", bit, arch_message);
	let mut print_state: u8 = 0;

	{
		let mut return_vaule: u8;
		unsafe { // ( ͡° ͜ʖ ͡°)
			let /*mut*/ coop_print_state: *mut u8 = &mut print_state as *mut u8;
			loop {
				return_vaule = coop_print(&mut (*coop_print_state));
				if print_state == 0 {break;}
			}
			println!("return value = {}", return_vaule);
		}
	}
}

fn coop_print(state: &mut u8) -> u8 {
	match state {
		0 => {
			println!("first thing");
			*state = 1;
			return 0;
		},
		1 => {
			println!("second thing");
			*state = 2;
			return 0;
		},
		2 => {
			println!("thing the third");
			*state = 0;
			return 5;
		},
		_ => *state = 0,
	};
	return 0;
}

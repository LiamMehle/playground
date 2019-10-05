fn main() {
	update_term_size();
	use std::fs;
	use std::process::Command;

	let raw_data: String = fs::read_to_string("/home/wolf/Desktop/besedilne vrste.desktop")
							  .expect("couldn't open file for reading");
	print!("{}", raw_data);
	split_output(10);

	let ls = Command::new("ls").output().expect("faield to execute ls");
	let formated_output: String = vec_to_str(&ls.stdout);
	print!("{}", formated_output);

}

fn split_output(width: usize) {
	print!("\n");
	for _i in 0..width {
		print!("-");
	}
	print!("\n");
}

fn vec_to_str(vec: &Vec<u8>) -> String {
	let mut formated_output: String = "".to_string();
	let mut i: usize = 0;
		while i < vec.len() {
			formated_output.push(vec[i as usize] as char);
			i += 1;
		}
	formated_output
}
#[inline]
fn update_term_size() {
	#[allow(non_snake_case)]
	let TIOCGWINSZ: isize = 0x00005413; // makes the code look more C-like,
	                                    // we're calling a C function after all
	#[repr(C)]          // don't rearange, this shit is to be C compattible
	#[allow(dead_code)] // yep, don't need half the stuff, but we don't want
	                    // segfaults, now do we?
	struct Termio { // setup struct for function
		ws_row: u16,
		ws_col: u16,
		ws_xpixel: u16,
		ws_ypixel: u16
	};

	extern "C" { // import function (thankyou rust, for making this easy)
		fn ioctl(stream: isize, operation: isize, w: &mut Termio); // yep, that's the one
	}


	{
		let mut w = Termio {
			ws_row: 0, // make output variable
			ws_col: 0,
			ws_xpixel: 0,
			ws_ypixel: 0
		}; // todo: remove need to init variable
		unsafe {
			ioctl(0, TIOCGWINSZ, &mut w); // run C fn
		}
		println!("x:{} y:{}", w.ws_col, w.ws_row); // print output
	} // unalloc everything in here
}

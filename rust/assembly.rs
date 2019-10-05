#![feature(asm)]
#![no_std]
#[cfg(any(target_arch = "x86", target_arch = "x86_64"))]
fn main() -> () {
	let input: usize = (0-1) as usize;
	let divisor: usize = 6;
	let output: usize;
	unsafe{ // get remainder
		// with div
		asm!("
		mov rax, $1
		mov rdx, 0
		div $2
		mov $0, rdx
		"
		: "=r" (output)
		: "r"  (input), "r" (divisor) : : "intel"
		)
		/* // without div
		asm!("
		mov rax, $1

		loop:
		cmp $1, $2
		jb end
		sub $1, $2
		jmp loop

		end:
		mov $1, $0
		"
		: "=r" (output)
		: "r"  (input), "r" (divisor) : : "intel"
		)
	*/
	}
	Ok(())
}

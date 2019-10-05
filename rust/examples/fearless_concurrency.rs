fn main() {
    /* do work in a seperate thread like so
    thread::spawn(move || {
        // work
    });
    thread::spawn returns a Join Handle
    let child = thread::spawn...

    get output like so
    let result = child.join();
    thread::current()::yield_now(); // yields
                     ::sleep(dur: Duration); // sleeps

                          .name("").. // if named, when panicking will print the thread name
                                      // the os will know about it where applicable
    thread::Builder::new().stack_size(/* in bytes*/).spawn({
        // work

    don't forget .unwrap(); or (preferably) anything better
    });
    */
    use std::thread;

    let builder = thread::Builder::new();
    let handle = builder.stack_size(0).spawn(move || {
        println!("hi");
    }).unwrap();

    println!("oi!");
    println!("oi!");
    println!("oi!");
    println!("oi!");
    println!("oi!");
    let _res = handle.join().unwrap();
}

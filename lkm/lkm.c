#include <kernel/module.h>

static int __init init(void) {
	return 0;
}

static void __exit exit(void) {

}

module_init(init);
module_exit(exit);

#ifndef __LINUX_COMPILER_H
#error "Please don't include <linux/compiler-gcc7.h> directly, include <linux/compiler.h> instead."
#endif

/*
 * GCC 7.x is largely compatible with GCC 5.x for Linux 3.18 kernel build purposes.
 * We pull in the GCC 5 definitions to satisfy the build system.
 */
#include <linux/compiler-gcc5.h>

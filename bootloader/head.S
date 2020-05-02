#include <processor.h>

.extern __stack_top

.global _start

_start:
	/* set up stack */
	ldr x0, =__stack_top
	mov sp, x0

	/* enable little endian */
	mrs x0, sctlr_el1
	and x0, x0, #SCTLR_EL1_EE_MASK
	and x0, x0, #SCTLR_EL1_EOE_MASK
	msr sctlr_el1, x0

	bl main

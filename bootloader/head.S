.extern __stack_top

.global _start

_start:
	/* setup stack */
	ldr x0, =__stack_top
	mov sp, x0

	bl main

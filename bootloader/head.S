.extern __stack_end

.global _start

_start:
	/* setup stack */
	ldr x0, =__stack_end
	mov sp, x0

	bl main

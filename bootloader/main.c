#define CURRENT_EL_MASK 0x3
#define CURRENT_EL_SHIFT 2

void uart_print_char(char c)
{
	const unsigned long uart_addr = 0x09000000;
 	*(char *)uart_addr = c;
}

void uart_print_string(char *c)
{
	while (*c) {
		uart_print_char(*c);
		c++;
	}
}

int get_current_el(void)
{
	int cur_el;
	asm (
		"mrs %0, currentEL\n\t"
		: "=r"  (cur_el)
		:
		: "memory");
	return (cur_el >> CURRENT_EL_SHIFT) & CURRENT_EL_MASK;
}

void print_current_el(void)
{
	int el;

	el = get_current_el();
	uart_print_string("current el level:");
	if (el == 1) {
		uart_print_char('1');
	} else if (el == 2) {
		uart_print_char('2');
	} else {
		uart_print_string("shit");
	}
	uart_print_char('\n');
}

int main()
{
	print_current_el();
	return 0;
}

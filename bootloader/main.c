void uart_print_char(char c)
{
	const unsigned long uart_addr = 0x09000000;
 	*(char *)uart_addr = c;
}

int main()
{
	uart_print_char('h');
	uart_print_char('e');
	return 0;
}

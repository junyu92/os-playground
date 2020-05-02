#ifndef STRING_H
#define STRING_H

void mem_zero(char *start, char *end)
{
	while (start < end) {
		*start = '\0';
		start++;
	}
}

#endif

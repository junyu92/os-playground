ENTRY(_start)

SECTIONS
{
  . = 0x80000000;

  .text :
  {
    *(.text)
  }

  .data :
  {
    *(.data)
  }

  .bss :
  {
    *(.bss)
  }

  .stack :
  {
    __stack_start = .;
    . = ALIGN(4);
    . += 4K;
    __stack_end = .;
  }
}

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
    __bss_start = .;
    *(.bss)
    __bss_end = .;
  }

  .stack :
  {
    __stack_bottom = .;
    . = ALIGN(4);
    . += 4K;
    __stack_top = .;
  }
}

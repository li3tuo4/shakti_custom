OUTPUT_ARCH( "riscv" )

SECTIONS
{
  . = 0x80000000;
  .text.init : { *(.text.init) }
  .tohost ALIGN(0x1000) : { *(.tohost) }
  .text ALIGN(0x0100) : { *(.text) }
  .data ALIGN(0x0100) : { *(.data) }
  .bss : { *(.bss) }
  _end = .;
}


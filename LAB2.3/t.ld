/****************
qemu with -kernel file.bin ==> start to execute from 0x10000 ==>
file.bin must be loaded to 0x10000 ==> . = 0x10000
************/
ENTRY(reset_handler)
SECTIONS
{
  . = 0x10000;
  .text : { ts.o *(.text) }
  .data : { *(.data) }
  .bss  : { *(.bss) }
  
  . = ALIGN(8);
  . = . + 0x4000;         /* SVC stack */
  stack_top = .;

}


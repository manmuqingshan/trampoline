#include <sys/types.h>

extern void SystemInit_efm32wg();

void __attribute__((weak)) tpl_continue_reset_handler(void);
void __attribute__((section(".after_vectors"))) system_init();

// Initialise the data section
inline void data_init(unsigned int* from, unsigned int* section_begin, unsigned int* section_end);
// Begin address for the initialisation values of the .data section.
// defined in linker script
extern unsigned int _sidata;
// Begin address for the .data section; defined in linker script
extern unsigned int _sdata;
// End address for the .data section; defined in linker script
extern unsigned int _edata;


// Clear the bss section
inline void bss_init(unsigned int* section_begin, unsigned int* section_end);
// Begin address for the .bss section; defined in linker script
extern unsigned int __bss_start__;
// End address for the .bss section; defined in linker script
extern unsigned int __bss_end__;

// These magic symbols are provided by the linker.
extern void (*__preinit_array_start[])(void) __attribute__((weak));
extern void (*__preinit_array_end[])(void) __attribute__((weak));
extern void (*__init_array_start[])(void) __attribute__((weak));
extern void (*__init_array_end[])(void) __attribute__((weak));
extern void (*__fini_array_start[])(void) __attribute__((weak));
extern void (*__fini_array_end[])(void) __attribute__((weak));

// The entry point for the application.
// main() is the entry point for Newlib based applications
extern int main(void);

// The implementation for the exit routine, where for embedded
// applications, a system reset is performed.
extern void _exit(int);

// Iterate over all the preinit/init routines.
extern void __libc_init_array(void);

// Run all the cleanup routines.
extern void __libc_fini_array(void);

inline void __attribute__((always_inline)) data_init(unsigned int* from, unsigned int* section_begin, unsigned int* section_end)
{
  // Iterate and copy word by word.
  // It is assumed that the pointers are word aligned.
  unsigned int *p = section_begin;
  while (p < section_end)
    *p++ = *from++;
}

inline void __attribute__((always_inline)) bss_init(unsigned int* section_begin, unsigned int* section_end){
  // Iterate and clear word by word.
  // It is assumed that the pointers are word aligned.
  unsigned int *p = section_begin;
  while (p < section_end)
    *p++ = 0;
}

// Iterate over all the preinit/init routines.
inline void __libc_init_array(void)
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
    __preinit_array_start[i]();

  // If you need to run the code in the .init section, please use
  // the startup files, since this requires the code in crti.o and crtn.o
  // to add the function prologue/epilogue.
  //_init();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
    __init_array_start[i]();
}

// Run all the cleanup routines.
inline void __libc_fini_array(void)
{
  size_t count;
  size_t i;

  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
    __fini_array_start[i - 1]();

  // If you need to run the code in the .fini section, please use
  // the startup files, since this requires the code in crti.o and crtn.o
  // to add the function prologue/epilogue.
  //_fini();
}

void __attribute__ ((section(".after_vectors"))) tpl_continue_reset_handler(void){
    /*
     * Initialize stacks and mode
     */

    // Zero fill the bss segment
    bss_init(&__bss_start__, &__bss_end__);
    system_init();
    // Call the standard library initialisation (mandatory, SystemInit()
    // and C++ static constructors are called from here).
    __libc_init_array();

    // Call the main entry point, and save the exit code.
    int r = main();

    // Run the static destructors.
    __libc_fini_array();

    // On test platforms, like semihosting, this can be used to inform
    // the host on the test result.
    // On embedded platforms, usually reset the processor.
    _exit(r);
}

// System initialisation, executed before constructors.
void __attribute__((section(".after_vectors"))) system_init()
{
  // Copy the data segment from Flash to RAM.
  // This is here since some library crt0 code does not perform it there
  // so we must be sure it is executed somewhere.
  // (for example librdimon)
  data_init(&_sidata, &_sdata, &_edata);

  // Call the system initialisation routine
  SystemInit_efm32wg();
}

void __cxa_pure_virtual() { while (1); }

- [Libraries](#libraries)
  - [Chip specific code](#chip-specific-code)
  


# Libraries
## Chip specific code

You can utilize the macros that xc compiler defines to make your library chip specific code adapt to the chip that the user is compiling for.

the compiler defines a macro for the chip number, for example if we are compiling for pic16f877a the macro `_16F887A` will be defined

```c
#if defined(_16F877A)
    // code that only works for pic16f877a
#elif defined(_16F887)
    // code that only works for pic16f887
#else // this library doesn't support this chip, rise a compile error
#error <library-name> library doesn't support the current chip!
#endif
```


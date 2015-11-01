Release Notes

> # Version 1.0.5
> - - -
> * MOD: When processing blame, after considering exception and crashed threads, also consider other threads.
>     * This is important for cases where dispatch is involved.

- - -

> # Version 1.0.4
> - - -
> * MOD: Do not alter description header.
> * FIX: Prevent buffer overflow when parsing numeric values.

- - -

> # Version 1.0.3.1
> - - -
> * FIX: iOS 9
>     * As per Jay Freeman (saurik): "iOS 9 changed the 32-bit pagesize on 64-bit CPUs from 4096 bytes to 16384: all 32-bit binaries must now be compiled with -Wl,-segalign,4000.".

- - -

> # Version 1.0.3
> - - -
> * MOD: Updated support for identifying AppStore apps.
>     * Filepath for AppStore apps changed in iOS 8.
> * MOD: Only parse description body when necessary.
> * FIX: Do not attempt to symbolicate or blame for non-crash type reports.
>     * This should prevent crashing when processing jetsam (low memory) reports.

- - -

> # Version 1.0.2
> - - -
> * FIX: Blamable
>     * When parsing log files that had already been processed, was incorrectly marking which binaries were blamable.

- - -

> # Version 1.0.1
> - - -
> * MOD: Switched from RegexKitLite to PCRE.
>     * This resulted in an increase in parsing speed and a reduction in binary size.

- - -

> # Version 1.0.0
> - - -
> * Initial standalone release.
>     * This library was originally part of libsymbolicate.

(library (system runtime compiler-services is-pinned)
  (export is? is-pinned?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Runtime.CompilerServices.IsPinned a))
  (define (is-pinned? a)
    (clr-is System.Runtime.CompilerServices.IsPinned a)))

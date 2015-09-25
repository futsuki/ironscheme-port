(library (system runtime compiler-services is-implicitly-dereferenced)
  (export is? is-implicitly-dereferenced?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.IsImplicitlyDereferenced a))
  (define (is-implicitly-dereferenced? a)
    (clr-is
      System.Runtime.CompilerServices.IsImplicitlyDereferenced
      a)))

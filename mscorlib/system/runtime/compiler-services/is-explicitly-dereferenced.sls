(library (system runtime compiler-services is-explicitly-dereferenced)
  (export is? is-explicitly-dereferenced?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.IsExplicitlyDereferenced a))
  (define (is-explicitly-dereferenced? a)
    (clr-is
      System.Runtime.CompilerServices.IsExplicitlyDereferenced
      a)))

(library (system runtime compiler-services compiler-marshal-override)
  (export is? compiler-marshal-override?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.CompilerMarshalOverride a))
  (define (compiler-marshal-override? a)
    (clr-is System.Runtime.CompilerServices.CompilerMarshalOverride a)))

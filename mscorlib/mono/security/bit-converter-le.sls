(library (mono security bit-converter-le)
  (export is? bit-converter-le?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Security.BitConverterLE a))
  (define (bit-converter-le? a)
    (clr-is Mono.Security.BitConverterLE a)))

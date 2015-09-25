(library (mono
          math
          prime
          generator
          sequential-search-prime-generator-base)
  (export new
          is?
          sequential-search-prime-generator-base?
          generate-new-prime)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase
             a
             ...)))))
  (define (is? a)
    (clr-is
      Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase
      a))
  (define (sequential-search-prime-generator-base? a)
    (clr-is
      Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase
      a))
  (define-method-port
    generate-new-prime
    Mono.Math.Prime.Generator.SequentialSearchPrimeGeneratorBase
    GenerateNewPrime
    (Mono.Math.BigInteger System.Int32 System.Object)
    (Mono.Math.BigInteger System.Int32)))

(library (mono math prime primality-tests)
  (export is?
          primality-tests?
          rabin-miller-test?
          test?
          small-prime-spp-test?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Math.Prime.PrimalityTests a))
  (define (primality-tests? a)
    (clr-is Mono.Math.Prime.PrimalityTests a))
  (define-method-port
    rabin-miller-test?
    Mono.Math.Prime.PrimalityTests
    RabinMillerTest
    (static:
      System.Boolean
      Mono.Math.BigInteger
      Mono.Math.Prime.ConfidenceFactor))
  (define-method-port
    test?
    Mono.Math.Prime.PrimalityTests
    Test
    (static:
      System.Boolean
      Mono.Math.BigInteger
      Mono.Math.Prime.ConfidenceFactor))
  (define-method-port
    small-prime-spp-test?
    Mono.Math.Prime.PrimalityTests
    SmallPrimeSppTest
    (static:
      System.Boolean
      Mono.Math.BigInteger
      Mono.Math.Prime.ConfidenceFactor)))

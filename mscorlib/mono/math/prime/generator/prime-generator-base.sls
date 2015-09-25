(library (mono math prime generator prime-generator-base)
  (export is?
          prime-generator-base?
          generate-new-prime
          confidence
          primality-test
          trial-division-bounds)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is Mono.Math.Prime.Generator.PrimeGeneratorBase a))
  (define (prime-generator-base? a)
    (clr-is Mono.Math.Prime.Generator.PrimeGeneratorBase a))
  (define-method-port
    generate-new-prime
    Mono.Math.Prime.Generator.PrimeGeneratorBase
    GenerateNewPrime
    (Mono.Math.BigInteger System.Int32))
  (define-field-port
    confidence
    #f
    #f
    (property:)
    Mono.Math.Prime.Generator.PrimeGeneratorBase
    Confidence
    Mono.Math.Prime.ConfidenceFactor)
  (define-field-port
    primality-test
    #f
    #f
    (property:)
    Mono.Math.Prime.Generator.PrimeGeneratorBase
    PrimalityTest
    Mono.Math.Prime.PrimalityTest)
  (define-field-port
    trial-division-bounds
    #f
    #f
    (property:)
    Mono.Math.Prime.Generator.PrimeGeneratorBase
    TrialDivisionBounds
    System.Int32))

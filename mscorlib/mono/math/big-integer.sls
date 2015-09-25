(library (mono math big-integer)
  (export new
          is?
          big-integer?
          clear-bit
          gcd
          parse
          mod-inverse
          randomize
          get-bytes
          equals?
          lowest-set-bit
          is-probable-prime?
          set-bit
          add
          generate-pseudo-prime
          divid
          bit-count
          get-hash-code
          modulus
          next-highest-prime
          test-bit?
          subtract
          multiply
          compare
          mod-pow
          clear
          to-string
          incr2
          generate-random)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Math.BigInteger a ...)))))
  (define (is? a) (clr-is Mono.Math.BigInteger a))
  (define (big-integer? a) (clr-is Mono.Math.BigInteger a))
  (define-method-port
    clear-bit
    Mono.Math.BigInteger
    ClearBit
    (System.Void System.UInt32))
  (define-method-port
    gcd
    Mono.Math.BigInteger
    GCD
    (Mono.Math.BigInteger Mono.Math.BigInteger))
  (define-method-port
    parse
    Mono.Math.BigInteger
    Parse
    (static: Mono.Math.BigInteger System.String))
  (define-method-port
    mod-inverse
    Mono.Math.BigInteger
    ModInverse
    (Mono.Math.BigInteger Mono.Math.BigInteger))
  (define-method-port
    randomize
    Mono.Math.BigInteger
    Randomize
    (System.Void)
    (System.Void System.Security.Cryptography.RandomNumberGenerator))
  (define-method-port
    get-bytes
    Mono.Math.BigInteger
    GetBytes
    (System.Byte[]))
  (define-method-port
    equals?
    Mono.Math.BigInteger
    Equals
    (System.Boolean System.Object))
  (define-method-port
    lowest-set-bit
    Mono.Math.BigInteger
    LowestSetBit
    (System.Int32))
  (define-method-port
    is-probable-prime?
    Mono.Math.BigInteger
    IsProbablePrime
    (System.Boolean))
  (define-method-port
    set-bit
    Mono.Math.BigInteger
    SetBit
    (System.Void System.UInt32 System.Boolean)
    (System.Void System.UInt32))
  (define-method-port
    add
    Mono.Math.BigInteger
    Add
    (static:
      Mono.Math.BigInteger
      Mono.Math.BigInteger
      Mono.Math.BigInteger))
  (define-method-port
    generate-pseudo-prime
    Mono.Math.BigInteger
    GeneratePseudoPrime
    (static: Mono.Math.BigInteger System.Int32))
  (define-method-port
    divid
    Mono.Math.BigInteger
    Divid
    (static:
      Mono.Math.BigInteger
      Mono.Math.BigInteger
      Mono.Math.BigInteger)
    (static: Mono.Math.BigInteger Mono.Math.BigInteger System.Int32))
  (define-method-port
    bit-count
    Mono.Math.BigInteger
    BitCount
    (System.Int32))
  (define-method-port
    get-hash-code
    Mono.Math.BigInteger
    GetHashCode
    (System.Int32))
  (define-method-port
    modulus
    Mono.Math.BigInteger
    Modulus
    (static:
      Mono.Math.BigInteger
      Mono.Math.BigInteger
      Mono.Math.BigInteger)
    (static: System.UInt32 Mono.Math.BigInteger System.UInt32)
    (static: System.Int32 Mono.Math.BigInteger System.Int32))
  (define-method-port
    next-highest-prime
    Mono.Math.BigInteger
    NextHighestPrime
    (static: Mono.Math.BigInteger Mono.Math.BigInteger))
  (define-method-port
    test-bit?
    Mono.Math.BigInteger
    TestBit
    (System.Boolean System.Int32)
    (System.Boolean System.UInt32))
  (define-method-port
    subtract
    Mono.Math.BigInteger
    Subtract
    (static:
      Mono.Math.BigInteger
      Mono.Math.BigInteger
      Mono.Math.BigInteger))
  (define-method-port
    multiply
    Mono.Math.BigInteger
    Multiply
    (static: Mono.Math.BigInteger Mono.Math.BigInteger System.Int32)
    (static:
      Mono.Math.BigInteger
      Mono.Math.BigInteger
      Mono.Math.BigInteger))
  (define-method-port
    compare
    Mono.Math.BigInteger
    Compare
    (Mono.Math.BigInteger+Sign Mono.Math.BigInteger))
  (define-method-port
    mod-pow
    Mono.Math.BigInteger
    ModPow
    (Mono.Math.BigInteger Mono.Math.BigInteger Mono.Math.BigInteger))
  (define-method-port clear Mono.Math.BigInteger Clear (System.Void))
  (define-method-port
    to-string
    Mono.Math.BigInteger
    ToString
    (System.String)
    (System.String System.UInt32 System.String)
    (System.String System.UInt32))
  (define-method-port incr2 Mono.Math.BigInteger Incr2 (System.Void))
  (define-method-port
    generate-random
    Mono.Math.BigInteger
    GenerateRandom
    (static: Mono.Math.BigInteger System.Int32)
    (static:
      Mono.Math.BigInteger
      System.Int32
      System.Security.Cryptography.RandomNumberGenerator)))

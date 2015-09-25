(library (system security cryptography hash-algorithm)
  (export is?
          hash-algorithm?
          create
          initialize
          transform-block
          transform-final-block
          compute-hash
          clear
          can-transform-multiple-blocks?
          can-reuse-transform?
          hash
          hash-size
          input-block-size
          output-block-size)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.HashAlgorithm a))
  (define (hash-algorithm? a)
    (clr-is System.Security.Cryptography.HashAlgorithm a))
  (define-method-port
    create
    System.Security.Cryptography.HashAlgorithm
    Create
    (static: System.Security.Cryptography.HashAlgorithm System.String)
    (static: System.Security.Cryptography.HashAlgorithm))
  (define-method-port
    initialize
    System.Security.Cryptography.HashAlgorithm
    Initialize
    (System.Void))
  (define-method-port
    transform-block
    System.Security.Cryptography.HashAlgorithm
    TransformBlock
    (System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Byte[]
      System.Int32))
  (define-method-port
    transform-final-block
    System.Security.Cryptography.HashAlgorithm
    TransformFinalBlock
    (System.Byte[] System.Byte[] System.Int32 System.Int32))
  (define-method-port
    compute-hash
    System.Security.Cryptography.HashAlgorithm
    ComputeHash
    (System.Byte[] System.IO.Stream)
    (System.Byte[] System.Byte[] System.Int32 System.Int32)
    (System.Byte[] System.Byte[]))
  (define-method-port
    clear
    System.Security.Cryptography.HashAlgorithm
    Clear
    (System.Void))
  (define-field-port
    can-transform-multiple-blocks?
    #f
    #f
    (property:)
    System.Security.Cryptography.HashAlgorithm
    CanTransformMultipleBlocks
    System.Boolean)
  (define-field-port
    can-reuse-transform?
    #f
    #f
    (property:)
    System.Security.Cryptography.HashAlgorithm
    CanReuseTransform
    System.Boolean)
  (define-field-port
    hash
    #f
    #f
    (property:)
    System.Security.Cryptography.HashAlgorithm
    Hash
    System.Byte[])
  (define-field-port
    hash-size
    #f
    #f
    (property:)
    System.Security.Cryptography.HashAlgorithm
    HashSize
    System.Int32)
  (define-field-port
    input-block-size
    #f
    #f
    (property:)
    System.Security.Cryptography.HashAlgorithm
    InputBlockSize
    System.Int32)
  (define-field-port
    output-block-size
    #f
    #f
    (property:)
    System.Security.Cryptography.HashAlgorithm
    OutputBlockSize
    System.Int32))

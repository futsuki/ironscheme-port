(library (mono security cryptography symmetric-transform)
  (export new
          is?
          symmetric-transform?
          transform-block
          transform-final-block
          can-transform-multiple-blocks?
          can-reuse-transform?
          input-block-size
          output-block-size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Security.Cryptography.SymmetricTransform
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Security.Cryptography.SymmetricTransform a))
  (define (symmetric-transform? a)
    (clr-is Mono.Security.Cryptography.SymmetricTransform a))
  (define-method-port
    transform-block
    Mono.Security.Cryptography.SymmetricTransform
    TransformBlock
    (System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Byte[]
      System.Int32))
  (define-method-port
    transform-final-block
    Mono.Security.Cryptography.SymmetricTransform
    TransformFinalBlock
    (System.Byte[] System.Byte[] System.Int32 System.Int32))
  (define-field-port
    can-transform-multiple-blocks?
    #f
    #f
    (property:)
    Mono.Security.Cryptography.SymmetricTransform
    CanTransformMultipleBlocks
    System.Boolean)
  (define-field-port
    can-reuse-transform?
    #f
    #f
    (property:)
    Mono.Security.Cryptography.SymmetricTransform
    CanReuseTransform
    System.Boolean)
  (define-field-port
    input-block-size
    #f
    #f
    (property:)
    Mono.Security.Cryptography.SymmetricTransform
    InputBlockSize
    System.Int32)
  (define-field-port
    output-block-size
    #f
    #f
    (property:)
    Mono.Security.Cryptography.SymmetricTransform
    OutputBlockSize
    System.Int32))

(library (system security cryptography to-base64-transform)
  (export new
          is?
          to-base64-transform?
          transform-block
          transform-final-block
          clear
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
             System.Security.Cryptography.ToBase64Transform
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.ToBase64Transform a))
  (define (to-base64-transform? a)
    (clr-is System.Security.Cryptography.ToBase64Transform a))
  (define-method-port
    transform-block
    System.Security.Cryptography.ToBase64Transform
    TransformBlock
    (System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Byte[]
      System.Int32))
  (define-method-port
    transform-final-block
    System.Security.Cryptography.ToBase64Transform
    TransformFinalBlock
    (System.Byte[] System.Byte[] System.Int32 System.Int32))
  (define-method-port
    clear
    System.Security.Cryptography.ToBase64Transform
    Clear
    (System.Void))
  (define-field-port
    can-transform-multiple-blocks?
    #f
    #f
    (property:)
    System.Security.Cryptography.ToBase64Transform
    CanTransformMultipleBlocks
    System.Boolean)
  (define-field-port
    can-reuse-transform?
    #f
    #f
    (property:)
    System.Security.Cryptography.ToBase64Transform
    CanReuseTransform
    System.Boolean)
  (define-field-port
    input-block-size
    #f
    #f
    (property:)
    System.Security.Cryptography.ToBase64Transform
    InputBlockSize
    System.Int32)
  (define-field-port
    output-block-size
    #f
    #f
    (property:)
    System.Security.Cryptography.ToBase64Transform
    OutputBlockSize
    System.Int32))

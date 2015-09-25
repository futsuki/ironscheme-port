(library (system security cryptography crypto-apitransform)
  (export is?
          crypto-apitransform?
          transform-block
          transform-final-block
          reset
          clear
          can-reuse-transform?
          can-transform-multiple-blocks?
          input-block-size
          key-handle
          output-block-size)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Cryptography.CryptoAPITransform a))
  (define (crypto-apitransform? a)
    (clr-is System.Security.Cryptography.CryptoAPITransform a))
  (define-method-port
    transform-block
    System.Security.Cryptography.CryptoAPITransform
    TransformBlock
    (System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Byte[]
      System.Int32))
  (define-method-port
    transform-final-block
    System.Security.Cryptography.CryptoAPITransform
    TransformFinalBlock
    (System.Byte[] System.Byte[] System.Int32 System.Int32))
  (define-method-port
    reset
    System.Security.Cryptography.CryptoAPITransform
    Reset
    (System.Void))
  (define-method-port
    clear
    System.Security.Cryptography.CryptoAPITransform
    Clear
    (System.Void))
  (define-field-port
    can-reuse-transform?
    #f
    #f
    (property:)
    System.Security.Cryptography.CryptoAPITransform
    CanReuseTransform
    System.Boolean)
  (define-field-port
    can-transform-multiple-blocks?
    #f
    #f
    (property:)
    System.Security.Cryptography.CryptoAPITransform
    CanTransformMultipleBlocks
    System.Boolean)
  (define-field-port
    input-block-size
    #f
    #f
    (property:)
    System.Security.Cryptography.CryptoAPITransform
    InputBlockSize
    System.Int32)
  (define-field-port
    key-handle
    #f
    #f
    (property:)
    System.Security.Cryptography.CryptoAPITransform
    KeyHandle
    System.IntPtr)
  (define-field-port
    output-block-size
    #f
    #f
    (property:)
    System.Security.Cryptography.CryptoAPITransform
    OutputBlockSize
    System.Int32))

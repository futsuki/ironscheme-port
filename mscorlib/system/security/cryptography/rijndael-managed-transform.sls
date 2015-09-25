(library (system security cryptography rijndael-managed-transform)
  (export is?
          rijndael-managed-transform?
          transform-block
          transform-final-block
          reset
          clear
          block-size-value
          can-transform-multiple-blocks?
          can-reuse-transform?
          input-block-size
          output-block-size)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Cryptography.RijndaelManagedTransform a))
  (define (rijndael-managed-transform? a)
    (clr-is System.Security.Cryptography.RijndaelManagedTransform a))
  (define-method-port
    transform-block
    System.Security.Cryptography.RijndaelManagedTransform
    TransformBlock
    (System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Byte[]
      System.Int32))
  (define-method-port
    transform-final-block
    System.Security.Cryptography.RijndaelManagedTransform
    TransformFinalBlock
    (System.Byte[] System.Byte[] System.Int32 System.Int32))
  (define-method-port
    reset
    System.Security.Cryptography.RijndaelManagedTransform
    Reset
    (System.Void))
  (define-method-port
    clear
    System.Security.Cryptography.RijndaelManagedTransform
    Clear
    (System.Void))
  (define-field-port
    block-size-value
    #f
    #f
    (property:)
    System.Security.Cryptography.RijndaelManagedTransform
    BlockSizeValue
    System.Int32)
  (define-field-port
    can-transform-multiple-blocks?
    #f
    #f
    (property:)
    System.Security.Cryptography.RijndaelManagedTransform
    CanTransformMultipleBlocks
    System.Boolean)
  (define-field-port
    can-reuse-transform?
    #f
    #f
    (property:)
    System.Security.Cryptography.RijndaelManagedTransform
    CanReuseTransform
    System.Boolean)
  (define-field-port
    input-block-size
    #f
    #f
    (property:)
    System.Security.Cryptography.RijndaelManagedTransform
    InputBlockSize
    System.Int32)
  (define-field-port
    output-block-size
    #f
    #f
    (property:)
    System.Security.Cryptography.RijndaelManagedTransform
    OutputBlockSize
    System.Int32))

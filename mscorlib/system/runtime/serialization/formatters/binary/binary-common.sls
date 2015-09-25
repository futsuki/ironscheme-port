(library (system runtime serialization formatters binary binary-common)
  (export new
          is?
          binary-common?
          get-type-from-code
          check-serializable
          get-type-code
          swap-bytes
          is-primitive?
          binary-header-get
          binary-header-set!
          binary-header-update!
          use-reflection-serialization?-get
          use-reflection-serialization?-set!
          use-reflection-serialization?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.Binary.BinaryCommon
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.BinaryCommon
      a))
  (define (binary-common? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.BinaryCommon
      a))
  (define-method-port
    get-type-from-code
    System.Runtime.Serialization.Formatters.Binary.BinaryCommon
    GetTypeFromCode
    (static: System.Type System.Int32))
  (define-method-port
    check-serializable
    System.Runtime.Serialization.Formatters.Binary.BinaryCommon
    CheckSerializable
    (static:
      System.Void
      System.Type
      System.Runtime.Serialization.ISurrogateSelector
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-type-code
    System.Runtime.Serialization.Formatters.Binary.BinaryCommon
    GetTypeCode
    (static: System.Byte System.Type))
  (define-method-port
    swap-bytes
    System.Runtime.Serialization.Formatters.Binary.BinaryCommon
    SwapBytes
    (static: System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    is-primitive?
    System.Runtime.Serialization.Formatters.Binary.BinaryCommon
    IsPrimitive
    (static: System.Boolean System.Type))
  (define-field-port
    binary-header-get
    binary-header-set!
    binary-header-update!
    (static:)
    System.Runtime.Serialization.Formatters.Binary.BinaryCommon
    BinaryHeader
    System.Byte[])
  (define-field-port
    use-reflection-serialization?-get
    use-reflection-serialization?-set!
    use-reflection-serialization?-update!
    (static:)
    System.Runtime.Serialization.Formatters.Binary.BinaryCommon
    UseReflectionSerialization
    System.Boolean))

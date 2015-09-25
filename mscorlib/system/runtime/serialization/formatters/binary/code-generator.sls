(library (system runtime serialization formatters binary code-generator)
  (export new
          is?
          code-generator?
          emit-write-primitive-value
          load-from-ptr
          generate-metadata-type-internal
          enum-to-underlying
          generate-metadata-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.Binary.CodeGenerator
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.CodeGenerator
      a))
  (define (code-generator? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.CodeGenerator
      a))
  (define-method-port
    emit-write-primitive-value
    System.Runtime.Serialization.Formatters.Binary.CodeGenerator
    EmitWritePrimitiveValue
    (static:
      System.Void
      System.Reflection.Emit.ILGenerator
      System.Type))
  (define-method-port
    load-from-ptr
    System.Runtime.Serialization.Formatters.Binary.CodeGenerator
    LoadFromPtr
    (static:
      System.Void
      System.Reflection.Emit.ILGenerator
      System.Type))
  (define-method-port
    generate-metadata-type-internal
    System.Runtime.Serialization.Formatters.Binary.CodeGenerator
    GenerateMetadataTypeInternal
    (static:
      System.Type
      System.Type
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    enum-to-underlying
    System.Runtime.Serialization.Formatters.Binary.CodeGenerator
    EnumToUnderlying
    (static: System.Type System.Type))
  (define-method-port
    generate-metadata-type
    System.Runtime.Serialization.Formatters.Binary.CodeGenerator
    GenerateMetadataType
    (static:
      System.Type
      System.Type
      System.Runtime.Serialization.StreamingContext)))

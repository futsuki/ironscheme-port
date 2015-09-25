(library (system reflection method-body)
  (export is?
          method-body?
          get-ilas-byte-array
          exception-handling-clauses
          local-variables
          init-locals?
          local-signature-metadata-token
          max-stack-size)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.MethodBody a))
  (define (method-body? a) (clr-is System.Reflection.MethodBody a))
  (define-method-port
    get-ilas-byte-array
    System.Reflection.MethodBody
    GetILAsByteArray
    (System.Byte[]))
  (define-field-port
    exception-handling-clauses
    #f
    #f
    (property:)
    System.Reflection.MethodBody
    ExceptionHandlingClauses
    "System.Collections.Generic.IList`1[[System.Reflection.ExceptionHandlingClause, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    local-variables
    #f
    #f
    (property:)
    System.Reflection.MethodBody
    LocalVariables
    "System.Collections.Generic.IList`1[[System.Reflection.LocalVariableInfo, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    init-locals?
    #f
    #f
    (property:)
    System.Reflection.MethodBody
    InitLocals
    System.Boolean)
  (define-field-port
    local-signature-metadata-token
    #f
    #f
    (property:)
    System.Reflection.MethodBody
    LocalSignatureMetadataToken
    System.Int32)
  (define-field-port
    max-stack-size
    #f
    #f
    (property:)
    System.Reflection.MethodBody
    MaxStackSize
    System.Int32))

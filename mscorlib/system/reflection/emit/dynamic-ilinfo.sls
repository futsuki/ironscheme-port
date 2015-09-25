(library (system reflection emit dynamic-ilinfo)
  (export is?
          dynamic-ilinfo?
          set-exceptions
          get-token-for
          set-local-signature
          set-code
          dynamic-method)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.DynamicILInfo a))
  (define (dynamic-ilinfo? a)
    (clr-is System.Reflection.Emit.DynamicILInfo a))
  (define-method-port
    set-exceptions
    System.Reflection.Emit.DynamicILInfo
    SetExceptions
    (System.Void System.Byte* System.Int32)
    (System.Void System.Byte[]))
  (define-method-port
    get-token-for
    System.Reflection.Emit.DynamicILInfo
    GetTokenFor
    (System.Int32 System.RuntimeMethodHandle System.RuntimeTypeHandle)
    (System.Int32 System.String)
    (System.Int32 System.RuntimeTypeHandle)
    (System.Int32 System.RuntimeMethodHandle)
    (System.Int32 System.RuntimeFieldHandle)
    (System.Int32 System.Reflection.Emit.DynamicMethod)
    (System.Int32 System.Byte[]))
  (define-method-port
    set-local-signature
    System.Reflection.Emit.DynamicILInfo
    SetLocalSignature
    (System.Void System.Byte* System.Int32)
    (System.Void System.Byte[]))
  (define-method-port
    set-code
    System.Reflection.Emit.DynamicILInfo
    SetCode
    (System.Void System.Byte* System.Int32 System.Int32)
    (System.Void System.Byte[] System.Int32))
  (define-field-port
    dynamic-method
    #f
    #f
    (property:)
    System.Reflection.Emit.DynamicILInfo
    DynamicMethod
    System.Reflection.Emit.DynamicMethod))

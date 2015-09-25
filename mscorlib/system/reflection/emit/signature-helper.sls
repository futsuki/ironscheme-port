(library (system reflection emit signature-helper)
  (export is?
          signature-helper?
          get-hash-code
          add-sentinel
          to-string
          get-field-sig-helper
          get-method-sig-helper
          add-argument
          get-property-sig-helper
          get-signature
          equals?
          get-local-var-sig-helper
          add-arguments)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.SignatureHelper a))
  (define (signature-helper? a)
    (clr-is System.Reflection.Emit.SignatureHelper a))
  (define-method-port
    get-hash-code
    System.Reflection.Emit.SignatureHelper
    GetHashCode
    (System.Int32))
  (define-method-port
    add-sentinel
    System.Reflection.Emit.SignatureHelper
    AddSentinel
    (System.Void))
  (define-method-port
    to-string
    System.Reflection.Emit.SignatureHelper
    ToString
    (System.String))
  (define-method-port
    get-field-sig-helper
    System.Reflection.Emit.SignatureHelper
    GetFieldSigHelper
    (static:
      System.Reflection.Emit.SignatureHelper
      System.Reflection.Module))
  (define-method-port
    get-method-sig-helper
    System.Reflection.Emit.SignatureHelper
    GetMethodSigHelper
    (static:
      System.Reflection.Emit.SignatureHelper
      System.Reflection.Module
      System.Type
      System.Type[])
    (static:
      System.Reflection.Emit.SignatureHelper
      System.Reflection.Module
      System.Runtime.InteropServices.CallingConvention
      System.Type)
    (static:
      System.Reflection.Emit.SignatureHelper
      System.Reflection.Module
      System.Reflection.CallingConventions
      System.Type)
    (static:
      System.Reflection.Emit.SignatureHelper
      System.Runtime.InteropServices.CallingConvention
      System.Type)
    (static:
      System.Reflection.Emit.SignatureHelper
      System.Reflection.CallingConventions
      System.Type))
  (define-method-port
    add-argument
    System.Reflection.Emit.SignatureHelper
    AddArgument
    (System.Void System.Type)
    (System.Void System.Type System.Type[] System.Type[])
    (System.Void System.Type System.Boolean))
  (define-method-port
    get-property-sig-helper
    System.Reflection.Emit.SignatureHelper
    GetPropertySigHelper
    (static:
      System.Reflection.Emit.SignatureHelper
      System.Reflection.Module
      System.Type
      System.Type[]
      System.Type[]
      System.Type[]
      System.Type[][]
      System.Type[][])
    (static:
      System.Reflection.Emit.SignatureHelper
      System.Reflection.Module
      System.Type
      System.Type[]))
  (define-method-port
    get-signature
    System.Reflection.Emit.SignatureHelper
    GetSignature
    (System.Byte[]))
  (define-method-port
    equals?
    System.Reflection.Emit.SignatureHelper
    Equals
    (System.Boolean System.Object))
  (define-method-port
    get-local-var-sig-helper
    System.Reflection.Emit.SignatureHelper
    GetLocalVarSigHelper
    (static: System.Reflection.Emit.SignatureHelper)
    (static:
      System.Reflection.Emit.SignatureHelper
      System.Reflection.Module))
  (define-method-port
    add-arguments
    System.Reflection.Emit.SignatureHelper
    AddArguments
    (System.Void System.Type[] System.Type[][] System.Type[][])))

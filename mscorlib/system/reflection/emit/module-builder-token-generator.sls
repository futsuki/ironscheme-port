(library (system reflection emit module-builder-token-generator)
  (export new is? module-builder-token-generator? get-token)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.Emit.ModuleBuilderTokenGenerator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.Emit.ModuleBuilderTokenGenerator a))
  (define (module-builder-token-generator? a)
    (clr-is System.Reflection.Emit.ModuleBuilderTokenGenerator a))
  (define-method-port
    get-token
    System.Reflection.Emit.ModuleBuilderTokenGenerator
    GetToken
    (System.Int32 System.Reflection.Emit.SignatureHelper)
    (System.Int32 System.Reflection.MethodInfo System.Type[])
    (System.Int32 System.Reflection.MemberInfo)
    (System.Int32 System.String)))

(library (system reflection emit dynamic-method-token-generator)
  (export new is? dynamic-method-token-generator? get-token)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.Emit.DynamicMethodTokenGenerator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.Emit.DynamicMethodTokenGenerator a))
  (define (dynamic-method-token-generator? a)
    (clr-is System.Reflection.Emit.DynamicMethodTokenGenerator a))
  (define-method-port
    get-token
    System.Reflection.Emit.DynamicMethodTokenGenerator
    GetToken
    (System.Int32 System.Reflection.Emit.SignatureHelper)
    (System.Int32 System.Reflection.MemberInfo)
    (System.Int32 System.Reflection.MethodInfo System.Type[])
    (System.Int32 System.String)))

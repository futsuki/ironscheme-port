(library (unity-engine setup-coroutine)
  (export new is? setup-coroutine? invoke-static invoke-member)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SetupCoroutine a ...)))))
  (define (is? a) (clr-is UnityEngine.SetupCoroutine a))
  (define (setup-coroutine? a) (clr-is UnityEngine.SetupCoroutine a))
  (define-method-port
    invoke-static
    UnityEngine.SetupCoroutine
    InvokeStatic
    (static: System.Object System.Type System.String System.Object))
  (define-method-port
    invoke-member
    UnityEngine.SetupCoroutine
    InvokeMember
    (static: System.Object System.Object System.String System.Object)))

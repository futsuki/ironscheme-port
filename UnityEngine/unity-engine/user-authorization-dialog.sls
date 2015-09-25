(library (unity-engine user-authorization-dialog)
  (export new is? user-authorization-dialog?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.UserAuthorizationDialog a ...)))))
  (define (is? a) (clr-is UnityEngine.UserAuthorizationDialog a))
  (define (user-authorization-dialog? a)
    (clr-is UnityEngine.UserAuthorizationDialog a)))

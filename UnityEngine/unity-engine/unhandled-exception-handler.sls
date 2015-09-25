(library (unity-engine unhandled-exception-handler)
  (export new is? unhandled-exception-handler?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.UnhandledExceptionHandler a ...)))))
  (define (is? a) (clr-is UnityEngine.UnhandledExceptionHandler a))
  (define (unhandled-exception-handler? a)
    (clr-is UnityEngine.UnhandledExceptionHandler a)))

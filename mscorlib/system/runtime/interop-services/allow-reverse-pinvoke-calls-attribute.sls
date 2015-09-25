(library (system
          runtime
          interop-services
          allow-reverse-pinvoke-calls-attribute)
  (export new is? allow-reverse-pinvoke-calls-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.AllowReversePInvokeCallsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.AllowReversePInvokeCallsAttribute
      a))
  (define (allow-reverse-pinvoke-calls-attribute? a)
    (clr-is
      System.Runtime.InteropServices.AllowReversePInvokeCallsAttribute
      a)))

(library (aot mono-pinvoke-callback-attribute)
  (export new is? mono-pinvoke-callback-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new AOT.MonoPInvokeCallbackAttribute a ...)))))
  (define (is? a) (clr-is AOT.MonoPInvokeCallbackAttribute a))
  (define (mono-pinvoke-callback-attribute? a)
    (clr-is AOT.MonoPInvokeCallbackAttribute a)))

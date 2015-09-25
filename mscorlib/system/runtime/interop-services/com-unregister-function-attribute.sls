(library (system
          runtime
          interop-services
          com-unregister-function-attribute)
  (export new is? com-unregister-function-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ComUnregisterFunctionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.ComUnregisterFunctionAttribute
      a))
  (define (com-unregister-function-attribute? a)
    (clr-is
      System.Runtime.InteropServices.ComUnregisterFunctionAttribute
      a)))

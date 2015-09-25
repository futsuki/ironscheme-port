(library (system
          runtime
          interop-services
          com-register-function-attribute)
  (export new is? com-register-function-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ComRegisterFunctionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.ComRegisterFunctionAttribute
      a))
  (define (com-register-function-attribute? a)
    (clr-is
      System.Runtime.InteropServices.ComRegisterFunctionAttribute
      a)))

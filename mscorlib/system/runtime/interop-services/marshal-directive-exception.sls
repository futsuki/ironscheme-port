(library (system runtime interop-services marshal-directive-exception)
  (export new is? marshal-directive-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.MarshalDirectiveException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.MarshalDirectiveException a))
  (define (marshal-directive-exception? a)
    (clr-is
      System.Runtime.InteropServices.MarshalDirectiveException
      a)))

(library (system runtime interop-services sehexception)
  (export new is? sehexception? can-resume?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.SEHException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.SEHException a))
  (define (sehexception? a)
    (clr-is System.Runtime.InteropServices.SEHException a))
  (define-method-port
    can-resume?
    System.Runtime.InteropServices.SEHException
    CanResume
    (System.Boolean)))

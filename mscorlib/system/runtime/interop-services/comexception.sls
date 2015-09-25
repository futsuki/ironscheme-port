(library (system runtime interop-services comexception)
  (export new is? comexception? to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.COMException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.COMException a))
  (define (comexception? a)
    (clr-is System.Runtime.InteropServices.COMException a))
  (define-method-port
    to-string
    System.Runtime.InteropServices.COMException
    ToString
    (System.String)))

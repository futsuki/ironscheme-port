(library (system runtime interop-services invalid-com-object-exception)
  (export new is? invalid-com-object-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.InvalidComObjectException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.InvalidComObjectException a))
  (define (invalid-com-object-exception? a)
    (clr-is
      System.Runtime.InteropServices.InvalidComObjectException
      a)))

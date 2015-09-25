(library (system
          runtime
          interop-services
          safe-array-type-mismatch-exception)
  (export new is? safe-array-type-mismatch-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.SafeArrayTypeMismatchException
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.SafeArrayTypeMismatchException
      a))
  (define (safe-array-type-mismatch-exception? a)
    (clr-is
      System.Runtime.InteropServices.SafeArrayTypeMismatchException
      a)))

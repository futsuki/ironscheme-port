(library (system
          runtime
          interop-services
          safe-array-rank-mismatch-exception)
  (export new is? safe-array-rank-mismatch-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.SafeArrayRankMismatchException
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.SafeArrayRankMismatchException
      a))
  (define (safe-array-rank-mismatch-exception? a)
    (clr-is
      System.Runtime.InteropServices.SafeArrayRankMismatchException
      a)))

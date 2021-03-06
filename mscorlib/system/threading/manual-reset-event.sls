(library (system threading manual-reset-event)
  (export new is? manual-reset-event?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Threading.ManualResetEvent a ...)))))
  (define (is? a) (clr-is System.Threading.ManualResetEvent a))
  (define (manual-reset-event? a)
    (clr-is System.Threading.ManualResetEvent a)))

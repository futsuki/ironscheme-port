(library (system duplicate-wait-object-exception)
  (export new is? duplicate-wait-object-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.DuplicateWaitObjectException a ...)))))
  (define (is? a) (clr-is System.DuplicateWaitObjectException a))
  (define (duplicate-wait-object-exception? a)
    (clr-is System.DuplicateWaitObjectException a)))
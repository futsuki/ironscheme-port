(library (system insufficient-memory-exception)
  (export new is? insufficient-memory-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.InsufficientMemoryException a ...)))))
  (define (is? a) (clr-is System.InsufficientMemoryException a))
  (define (insufficient-memory-exception? a)
    (clr-is System.InsufficientMemoryException a)))

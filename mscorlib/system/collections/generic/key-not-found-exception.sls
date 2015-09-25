(library (system collections generic key-not-found-exception)
  (export new is? key-not-found-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Collections.Generic.KeyNotFoundException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Collections.Generic.KeyNotFoundException a))
  (define (key-not-found-exception? a)
    (clr-is System.Collections.Generic.KeyNotFoundException a)))

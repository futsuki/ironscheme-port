(library (system component-model invalid-enum-argument-exception)
  (export new is? invalid-enum-argument-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.InvalidEnumArgumentException
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.InvalidEnumArgumentException a))
  (define (invalid-enum-argument-exception? a)
    (clr-is System.ComponentModel.InvalidEnumArgumentException a)))

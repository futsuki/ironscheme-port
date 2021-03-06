(library (system component-model sbyte-converter)
  (export new is? sbyte-converter?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.SByteConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.SByteConverter a))
  (define (sbyte-converter? a)
    (clr-is System.ComponentModel.SByteConverter a)))

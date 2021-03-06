(library (system context-marshal-exception)
  (export new is? context-marshal-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ContextMarshalException a ...)))))
  (define (is? a) (clr-is System.ContextMarshalException a))
  (define (context-marshal-exception? a)
    (clr-is System.ContextMarshalException a)))

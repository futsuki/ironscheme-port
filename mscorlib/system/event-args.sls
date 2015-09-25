(library (system event-args)
  (export new is? event-args? empty)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.EventArgs a ...)))))
  (define (is? a) (clr-is System.EventArgs a))
  (define (event-args? a) (clr-is System.EventArgs a))
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.EventArgs
    Empty
    System.EventArgs))

(library (system component-model invalid-asynchronous-state-exception)
  (export new is? invalid-asynchronous-state-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.InvalidAsynchronousStateException
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.InvalidAsynchronousStateException a))
  (define (invalid-asynchronous-state-exception? a)
    (clr-is System.ComponentModel.InvalidAsynchronousStateException a)))

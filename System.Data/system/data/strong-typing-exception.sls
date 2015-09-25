(library (system data strong-typing-exception)
  (export new is? strong-typing-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.StrongTypingException a ...)))))
  (define (is? a) (clr-is System.Data.StrongTypingException a))
  (define (strong-typing-exception? a)
    (clr-is System.Data.StrongTypingException a)))

(library (system text regular-expressions link-stack)
  (export new is? link-stack? push pop?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Text.RegularExpressions.LinkStack a ...)))))
  (define (is? a) (clr-is System.Text.RegularExpressions.LinkStack a))
  (define (link-stack? a)
    (clr-is System.Text.RegularExpressions.LinkStack a))
  (define-method-port
    push
    System.Text.RegularExpressions.LinkStack
    Push
    (System.Void))
  (define-method-port
    pop?
    System.Text.RegularExpressions.LinkStack
    Pop
    (System.Boolean)))

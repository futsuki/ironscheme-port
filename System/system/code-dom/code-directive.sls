(library (system code-dom code-directive)
  (export new is? code-directive?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeDirective a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeDirective a))
  (define (code-directive? a) (clr-is System.CodeDom.CodeDirective a)))

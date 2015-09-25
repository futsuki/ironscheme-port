(library (system code-dom code-throw-exception-statement)
  (export new
          is?
          code-throw-exception-statement?
          to-throw-get
          to-throw-set!
          to-throw-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeThrowExceptionStatement
             a
             ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeThrowExceptionStatement a))
  (define (code-throw-exception-statement? a)
    (clr-is System.CodeDom.CodeThrowExceptionStatement a))
  (define-field-port
    to-throw-get
    to-throw-set!
    to-throw-update!
    (property:)
    System.CodeDom.CodeThrowExceptionStatement
    ToThrow
    System.CodeDom.CodeExpression))

(library (system code-dom code-assign-statement)
  (export new
          is?
          code-assign-statement?
          left-get
          left-set!
          left-update!
          right-get
          right-set!
          right-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeAssignStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeAssignStatement a))
  (define (code-assign-statement? a)
    (clr-is System.CodeDom.CodeAssignStatement a))
  (define-field-port
    left-get
    left-set!
    left-update!
    (property:)
    System.CodeDom.CodeAssignStatement
    Left
    System.CodeDom.CodeExpression)
  (define-field-port
    right-get
    right-set!
    right-update!
    (property:)
    System.CodeDom.CodeAssignStatement
    Right
    System.CodeDom.CodeExpression))

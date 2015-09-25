(library (system code-dom code-variable-reference-expression)
  (export new
          is?
          code-variable-reference-expression?
          variable-name-get
          variable-name-set!
          variable-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeVariableReferenceExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeVariableReferenceExpression a))
  (define (code-variable-reference-expression? a)
    (clr-is System.CodeDom.CodeVariableReferenceExpression a))
  (define-field-port
    variable-name-get
    variable-name-set!
    variable-name-update!
    (property:)
    System.CodeDom.CodeVariableReferenceExpression
    VariableName
    System.String))

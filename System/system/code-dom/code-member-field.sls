(library (system code-dom code-member-field)
  (export new
          is?
          code-member-field?
          init-expression-get
          init-expression-set!
          init-expression-update!
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeMemberField a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeMemberField a))
  (define (code-member-field? a)
    (clr-is System.CodeDom.CodeMemberField a))
  (define-field-port
    init-expression-get
    init-expression-set!
    init-expression-update!
    (property:)
    System.CodeDom.CodeMemberField
    InitExpression
    System.CodeDom.CodeExpression)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.CodeDom.CodeMemberField
    Type
    System.CodeDom.CodeTypeReference))

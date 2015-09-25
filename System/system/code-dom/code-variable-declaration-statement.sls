(library (system code-dom code-variable-declaration-statement)
  (export new
          is?
          code-variable-declaration-statement?
          init-expression-get
          init-expression-set!
          init-expression-update!
          name-get
          name-set!
          name-update!
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeVariableDeclarationStatement
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeVariableDeclarationStatement a))
  (define (code-variable-declaration-statement? a)
    (clr-is System.CodeDom.CodeVariableDeclarationStatement a))
  (define-field-port
    init-expression-get
    init-expression-set!
    init-expression-update!
    (property:)
    System.CodeDom.CodeVariableDeclarationStatement
    InitExpression
    System.CodeDom.CodeExpression)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.CodeDom.CodeVariableDeclarationStatement
    Name
    System.String)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.CodeDom.CodeVariableDeclarationStatement
    Type
    System.CodeDom.CodeTypeReference))

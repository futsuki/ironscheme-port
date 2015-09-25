(library (system code-dom code-namespace)
  (export new
          is?
          code-namespace?
          comments
          imports
          name-get
          name-set!
          name-update!
          types)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeNamespace a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeNamespace a))
  (define (code-namespace? a) (clr-is System.CodeDom.CodeNamespace a))
  (define-field-port
    comments
    #f
    #f
    (property:)
    System.CodeDom.CodeNamespace
    Comments
    System.CodeDom.CodeCommentStatementCollection)
  (define-field-port
    imports
    #f
    #f
    (property:)
    System.CodeDom.CodeNamespace
    Imports
    System.CodeDom.CodeNamespaceImportCollection)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.CodeDom.CodeNamespace
    Name
    System.String)
  (define-field-port
    types
    #f
    #f
    (property:)
    System.CodeDom.CodeNamespace
    Types
    System.CodeDom.CodeTypeDeclarationCollection))

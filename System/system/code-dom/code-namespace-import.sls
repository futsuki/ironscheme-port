(library (system code-dom code-namespace-import)
  (export new
          is?
          code-namespace-import?
          line-pragma-get
          line-pragma-set!
          line-pragma-update!
          namespace-get
          namespace-set!
          namespace-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeNamespaceImport a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeNamespaceImport a))
  (define (code-namespace-import? a)
    (clr-is System.CodeDom.CodeNamespaceImport a))
  (define-field-port
    line-pragma-get
    line-pragma-set!
    line-pragma-update!
    (property:)
    System.CodeDom.CodeNamespaceImport
    LinePragma
    System.CodeDom.CodeLinePragma)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.CodeDom.CodeNamespaceImport
    Namespace
    System.String))

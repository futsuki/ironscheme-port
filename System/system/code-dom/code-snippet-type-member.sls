(library (system code-dom code-snippet-type-member)
  (export new
          is?
          code-snippet-type-member?
          text-get
          text-set!
          text-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeSnippetTypeMember a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeSnippetTypeMember a))
  (define (code-snippet-type-member? a)
    (clr-is System.CodeDom.CodeSnippetTypeMember a))
  (define-field-port
    text-get
    text-set!
    text-update!
    (property:)
    System.CodeDom.CodeSnippetTypeMember
    Text
    System.String))

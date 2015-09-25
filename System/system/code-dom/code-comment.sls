(library (system code-dom code-comment)
  (export new
          is?
          code-comment?
          doc-comment?-get
          doc-comment?-set!
          doc-comment?-update!
          text-get
          text-set!
          text-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeComment a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeComment a))
  (define (code-comment? a) (clr-is System.CodeDom.CodeComment a))
  (define-field-port
    doc-comment?-get
    doc-comment?-set!
    doc-comment?-update!
    (property:)
    System.CodeDom.CodeComment
    DocComment
    System.Boolean)
  (define-field-port
    text-get
    text-set!
    text-update!
    (property:)
    System.CodeDom.CodeComment
    Text
    System.String))

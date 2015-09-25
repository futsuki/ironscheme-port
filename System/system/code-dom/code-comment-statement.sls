(library (system code-dom code-comment-statement)
  (export new
          is?
          code-comment-statement?
          comment-get
          comment-set!
          comment-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeCommentStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeCommentStatement a))
  (define (code-comment-statement? a)
    (clr-is System.CodeDom.CodeCommentStatement a))
  (define-field-port
    comment-get
    comment-set!
    comment-update!
    (property:)
    System.CodeDom.CodeCommentStatement
    Comment
    System.CodeDom.CodeComment))

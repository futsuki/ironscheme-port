(library (system code-dom code-goto-statement)
  (export new
          is?
          code-goto-statement?
          label-get
          label-set!
          label-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeGotoStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeGotoStatement a))
  (define (code-goto-statement? a)
    (clr-is System.CodeDom.CodeGotoStatement a))
  (define-field-port
    label-get
    label-set!
    label-update!
    (property:)
    System.CodeDom.CodeGotoStatement
    Label
    System.String))

(library (system code-dom code-line-pragma)
  (export new
          is?
          code-line-pragma?
          file-name-get
          file-name-set!
          file-name-update!
          line-number-get
          line-number-set!
          line-number-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeLinePragma a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeLinePragma a))
  (define (code-line-pragma? a)
    (clr-is System.CodeDom.CodeLinePragma a))
  (define-field-port
    file-name-get
    file-name-set!
    file-name-update!
    (property:)
    System.CodeDom.CodeLinePragma
    FileName
    System.String)
  (define-field-port
    line-number-get
    line-number-set!
    line-number-update!
    (property:)
    System.CodeDom.CodeLinePragma
    LineNumber
    System.Int32))

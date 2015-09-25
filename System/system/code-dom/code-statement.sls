(library (system code-dom code-statement)
  (export new
          is?
          code-statement?
          line-pragma-get
          line-pragma-set!
          line-pragma-update!
          end-directives
          start-directives)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeStatement a))
  (define (code-statement? a) (clr-is System.CodeDom.CodeStatement a))
  (define-field-port
    line-pragma-get
    line-pragma-set!
    line-pragma-update!
    (property:)
    System.CodeDom.CodeStatement
    LinePragma
    System.CodeDom.CodeLinePragma)
  (define-field-port
    end-directives
    #f
    #f
    (property:)
    System.CodeDom.CodeStatement
    EndDirectives
    System.CodeDom.CodeDirectiveCollection)
  (define-field-port
    start-directives
    #f
    #f
    (property:)
    System.CodeDom.CodeStatement
    StartDirectives
    System.CodeDom.CodeDirectiveCollection))

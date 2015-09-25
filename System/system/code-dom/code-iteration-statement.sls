(library (system code-dom code-iteration-statement)
  (export new
          is?
          code-iteration-statement?
          increment-statement-get
          increment-statement-set!
          increment-statement-update!
          init-statement-get
          init-statement-set!
          init-statement-update!
          statements
          test-expression-get
          test-expression-set!
          test-expression-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeIterationStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeIterationStatement a))
  (define (code-iteration-statement? a)
    (clr-is System.CodeDom.CodeIterationStatement a))
  (define-field-port
    increment-statement-get
    increment-statement-set!
    increment-statement-update!
    (property:)
    System.CodeDom.CodeIterationStatement
    IncrementStatement
    System.CodeDom.CodeStatement)
  (define-field-port
    init-statement-get
    init-statement-set!
    init-statement-update!
    (property:)
    System.CodeDom.CodeIterationStatement
    InitStatement
    System.CodeDom.CodeStatement)
  (define-field-port
    statements
    #f
    #f
    (property:)
    System.CodeDom.CodeIterationStatement
    Statements
    System.CodeDom.CodeStatementCollection)
  (define-field-port
    test-expression-get
    test-expression-set!
    test-expression-update!
    (property:)
    System.CodeDom.CodeIterationStatement
    TestExpression
    System.CodeDom.CodeExpression))

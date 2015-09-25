(library (system code-dom code-condition-statement)
  (export new
          is?
          code-condition-statement?
          condition-get
          condition-set!
          condition-update!
          false-statements
          true-statements)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeConditionStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeConditionStatement a))
  (define (code-condition-statement? a)
    (clr-is System.CodeDom.CodeConditionStatement a))
  (define-field-port
    condition-get
    condition-set!
    condition-update!
    (property:)
    System.CodeDom.CodeConditionStatement
    Condition
    System.CodeDom.CodeExpression)
  (define-field-port
    false-statements
    #f
    #f
    (property:)
    System.CodeDom.CodeConditionStatement
    FalseStatements
    System.CodeDom.CodeStatementCollection)
  (define-field-port
    true-statements
    #f
    #f
    (property:)
    System.CodeDom.CodeConditionStatement
    TrueStatements
    System.CodeDom.CodeStatementCollection))

(library (system code-dom code-try-catch-finally-statement)
  (export new
          is?
          code-try-catch-finally-statement?
          finally-statements
          try-statements
          catch-clauses)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeTryCatchFinallyStatement
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeTryCatchFinallyStatement a))
  (define (code-try-catch-finally-statement? a)
    (clr-is System.CodeDom.CodeTryCatchFinallyStatement a))
  (define-field-port
    finally-statements
    #f
    #f
    (property:)
    System.CodeDom.CodeTryCatchFinallyStatement
    FinallyStatements
    System.CodeDom.CodeStatementCollection)
  (define-field-port
    try-statements
    #f
    #f
    (property:)
    System.CodeDom.CodeTryCatchFinallyStatement
    TryStatements
    System.CodeDom.CodeStatementCollection)
  (define-field-port
    catch-clauses
    #f
    #f
    (property:)
    System.CodeDom.CodeTryCatchFinallyStatement
    CatchClauses
    System.CodeDom.CodeCatchClauseCollection))

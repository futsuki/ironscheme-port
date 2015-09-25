(library (system code-dom code-catch-clause)
  (export new
          is?
          code-catch-clause?
          catch-exception-type-get
          catch-exception-type-set!
          catch-exception-type-update!
          local-name-get
          local-name-set!
          local-name-update!
          statements)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeCatchClause a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeCatchClause a))
  (define (code-catch-clause? a)
    (clr-is System.CodeDom.CodeCatchClause a))
  (define-field-port
    catch-exception-type-get
    catch-exception-type-set!
    catch-exception-type-update!
    (property:)
    System.CodeDom.CodeCatchClause
    CatchExceptionType
    System.CodeDom.CodeTypeReference)
  (define-field-port
    local-name-get
    local-name-set!
    local-name-update!
    (property:)
    System.CodeDom.CodeCatchClause
    LocalName
    System.String)
  (define-field-port
    statements
    #f
    #f
    (property:)
    System.CodeDom.CodeCatchClause
    Statements
    System.CodeDom.CodeStatementCollection))

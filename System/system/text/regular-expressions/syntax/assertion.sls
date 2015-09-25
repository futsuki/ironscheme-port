(library (system text regular-expressions syntax assertion)
  (export new
          is?
          assertion?
          get-width
          true-expression-get
          true-expression-set!
          true-expression-update!
          false-expression-get
          false-expression-set!
          false-expression-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.Assertion
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.Assertion a))
  (define (assertion? a)
    (clr-is System.Text.RegularExpressions.Syntax.Assertion a))
  (define-method-port
    get-width
    System.Text.RegularExpressions.Syntax.Assertion
    GetWidth
    (System.Void System.Int32& System.Int32&))
  (define-field-port
    true-expression-get
    true-expression-set!
    true-expression-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Assertion
    TrueExpression
    System.Text.RegularExpressions.Syntax.Expression)
  (define-field-port
    false-expression-get
    false-expression-set!
    false-expression-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Assertion
    FalseExpression
    System.Text.RegularExpressions.Syntax.Expression))

(library (system text regular-expressions syntax expression-assertion)
  (export new
          is?
          expression-assertion?
          compile
          is-complex?
          reverse?-get
          reverse?-set!
          reverse?-update!
          negate?-get
          negate?-set!
          negate?-update!
          test-expression-get
          test-expression-set!
          test-expression-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.ExpressionAssertion
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Text.RegularExpressions.Syntax.ExpressionAssertion
      a))
  (define (expression-assertion? a)
    (clr-is
      System.Text.RegularExpressions.Syntax.ExpressionAssertion
      a))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.ExpressionAssertion
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    is-complex?
    System.Text.RegularExpressions.Syntax.ExpressionAssertion
    IsComplex
    (System.Boolean))
  (define-field-port
    reverse?-get
    reverse?-set!
    reverse?-update!
    (property:)
    System.Text.RegularExpressions.Syntax.ExpressionAssertion
    Reverse
    System.Boolean)
  (define-field-port
    negate?-get
    negate?-set!
    negate?-update!
    (property:)
    System.Text.RegularExpressions.Syntax.ExpressionAssertion
    Negate
    System.Boolean)
  (define-field-port
    test-expression-get
    test-expression-set!
    test-expression-update!
    (property:)
    System.Text.RegularExpressions.Syntax.ExpressionAssertion
    TestExpression
    System.Text.RegularExpressions.Syntax.Expression))

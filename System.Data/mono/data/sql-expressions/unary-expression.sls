(library (mono data sql-expressions unary-expression)
  (export new
          is?
          unary-expression?
          depends-on?
          get-hash-code
          eval-boolean?
          equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.UnaryExpression a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.UnaryExpression a))
  (define (unary-expression? a)
    (clr-is Mono.Data.SqlExpressions.UnaryExpression a))
  (define-method-port
    depends-on?
    Mono.Data.SqlExpressions.UnaryExpression
    DependsOn
    (System.Boolean System.Data.DataColumn))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.UnaryExpression
    GetHashCode
    (System.Int32))
  (define-method-port
    eval-boolean?
    Mono.Data.SqlExpressions.UnaryExpression
    EvalBoolean
    (System.Boolean System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.UnaryExpression
    Equals
    (System.Boolean System.Object)))

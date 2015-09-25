(library (system linq expressions expression-transformer)
  (export is? expression-transformer? transform)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Linq.Expressions.ExpressionTransformer a))
  (define (expression-transformer? a)
    (clr-is System.Linq.Expressions.ExpressionTransformer a))
  (define-method-port
    transform
    System.Linq.Expressions.ExpressionTransformer
    Transform
    (System.Linq.Expressions.Expression
      System.Linq.Expressions.Expression)))

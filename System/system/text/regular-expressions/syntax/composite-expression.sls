(library (system text regular-expressions syntax composite-expression)
  (export new is? composite-expression? is-complex?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.CompositeExpression
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Text.RegularExpressions.Syntax.CompositeExpression
      a))
  (define (composite-expression? a)
    (clr-is
      System.Text.RegularExpressions.Syntax.CompositeExpression
      a))
  (define-method-port
    is-complex?
    System.Text.RegularExpressions.Syntax.CompositeExpression
    IsComplex
    (System.Boolean)))

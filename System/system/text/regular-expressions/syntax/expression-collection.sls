(library (system text regular-expressions syntax expression-collection)
  (export new
          is?
          expression-collection?
          add
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.ExpressionCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Text.RegularExpressions.Syntax.ExpressionCollection
      a))
  (define (expression-collection? a)
    (clr-is
      System.Text.RegularExpressions.Syntax.ExpressionCollection
      a))
  (define-method-port
    add
    System.Text.RegularExpressions.Syntax.ExpressionCollection
    Add
    (System.Void System.Text.RegularExpressions.Syntax.Expression))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Text.RegularExpressions.Syntax.ExpressionCollection
    Item
    System.Text.RegularExpressions.Syntax.Expression))

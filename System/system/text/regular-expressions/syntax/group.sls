(library (system text regular-expressions syntax group)
  (export new
          is?
          group?
          get-anchor-info
          append-expression
          compile
          get-width
          expression-get
          expression-set!
          expression-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.Group
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.Group a))
  (define (group? a)
    (clr-is System.Text.RegularExpressions.Syntax.Group a))
  (define-method-port
    get-anchor-info
    System.Text.RegularExpressions.Syntax.Group
    GetAnchorInfo
    (System.Text.RegularExpressions.Syntax.AnchorInfo System.Boolean))
  (define-method-port
    append-expression
    System.Text.RegularExpressions.Syntax.Group
    AppendExpression
    (System.Void System.Text.RegularExpressions.Syntax.Expression))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.Group
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    get-width
    System.Text.RegularExpressions.Syntax.Group
    GetWidth
    (System.Void System.Int32& System.Int32&))
  (define-field-port
    expression-get
    expression-set!
    expression-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Group
    Expression
    System.Text.RegularExpressions.Syntax.Expression))

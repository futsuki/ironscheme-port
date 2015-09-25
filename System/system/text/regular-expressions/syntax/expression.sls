(library (system text regular-expressions syntax expression)
  (export is?
          expression?
          get-anchor-info
          get-fixed-width
          compile
          get-width
          is-complex?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.Expression a))
  (define (expression? a)
    (clr-is System.Text.RegularExpressions.Syntax.Expression a))
  (define-method-port
    get-anchor-info
    System.Text.RegularExpressions.Syntax.Expression
    GetAnchorInfo
    (System.Text.RegularExpressions.Syntax.AnchorInfo System.Boolean))
  (define-method-port
    get-fixed-width
    System.Text.RegularExpressions.Syntax.Expression
    GetFixedWidth
    (System.Int32))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.Expression
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    get-width
    System.Text.RegularExpressions.Syntax.Expression
    GetWidth
    (System.Void System.Int32& System.Int32&))
  (define-method-port
    is-complex?
    System.Text.RegularExpressions.Syntax.Expression
    IsComplex
    (System.Boolean)))

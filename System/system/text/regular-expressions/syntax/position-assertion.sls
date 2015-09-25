(library (system text regular-expressions syntax position-assertion)
  (export new
          is?
          position-assertion?
          get-anchor-info
          compile
          get-width
          is-complex?
          position-get
          position-set!
          position-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.PositionAssertion
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.PositionAssertion a))
  (define (position-assertion? a)
    (clr-is System.Text.RegularExpressions.Syntax.PositionAssertion a))
  (define-method-port
    get-anchor-info
    System.Text.RegularExpressions.Syntax.PositionAssertion
    GetAnchorInfo
    (System.Text.RegularExpressions.Syntax.AnchorInfo System.Boolean))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.PositionAssertion
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    get-width
    System.Text.RegularExpressions.Syntax.PositionAssertion
    GetWidth
    (System.Void System.Int32& System.Int32&))
  (define-method-port
    is-complex?
    System.Text.RegularExpressions.Syntax.PositionAssertion
    IsComplex
    (System.Boolean))
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.Text.RegularExpressions.Syntax.PositionAssertion
    Position
    System.Text.RegularExpressions.Position))

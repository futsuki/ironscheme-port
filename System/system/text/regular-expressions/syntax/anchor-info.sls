(library (system text regular-expressions syntax anchor-info)
  (export new
          is?
          anchor-info?
          get-interval
          expression
          offset
          width
          length
          is-unknown-width?
          is-complete?
          substring
          ignore-case?
          position
          is-substring?
          is-position?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.AnchorInfo
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.AnchorInfo a))
  (define (anchor-info? a)
    (clr-is System.Text.RegularExpressions.Syntax.AnchorInfo a))
  (define-method-port
    get-interval
    System.Text.RegularExpressions.Syntax.AnchorInfo
    GetInterval
    (System.Text.RegularExpressions.Interval System.Int32)
    (System.Text.RegularExpressions.Interval))
  (define-field-port
    expression
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    Expression
    System.Text.RegularExpressions.Syntax.Expression)
  (define-field-port
    offset
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    Offset
    System.Int32)
  (define-field-port
    width
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    Width
    System.Int32)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    Length
    System.Int32)
  (define-field-port
    is-unknown-width?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    IsUnknownWidth
    System.Boolean)
  (define-field-port
    is-complete?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    IsComplete
    System.Boolean)
  (define-field-port
    substring
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    Substring
    System.String)
  (define-field-port
    ignore-case?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    IgnoreCase
    System.Boolean)
  (define-field-port
    position
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    Position
    System.Text.RegularExpressions.Position)
  (define-field-port
    is-substring?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    IsSubstring
    System.Boolean)
  (define-field-port
    is-position?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.AnchorInfo
    IsPosition
    System.Boolean))

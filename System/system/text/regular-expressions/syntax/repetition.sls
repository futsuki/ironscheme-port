(library (system text regular-expressions syntax repetition)
  (export new
          is?
          repetition?
          get-anchor-info
          compile
          get-width
          expression-get
          expression-set!
          expression-update!
          minimum-get
          minimum-set!
          minimum-update!
          maximum-get
          maximum-set!
          maximum-update!
          lazy?-get
          lazy?-set!
          lazy?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.Repetition
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.Repetition a))
  (define (repetition? a)
    (clr-is System.Text.RegularExpressions.Syntax.Repetition a))
  (define-method-port
    get-anchor-info
    System.Text.RegularExpressions.Syntax.Repetition
    GetAnchorInfo
    (System.Text.RegularExpressions.Syntax.AnchorInfo System.Boolean))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.Repetition
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    get-width
    System.Text.RegularExpressions.Syntax.Repetition
    GetWidth
    (System.Void System.Int32& System.Int32&))
  (define-field-port
    expression-get
    expression-set!
    expression-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Repetition
    Expression
    System.Text.RegularExpressions.Syntax.Expression)
  (define-field-port
    minimum-get
    minimum-set!
    minimum-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Repetition
    Minimum
    System.Int32)
  (define-field-port
    maximum-get
    maximum-set!
    maximum-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Repetition
    Maximum
    System.Int32)
  (define-field-port
    lazy?-get
    lazy?-set!
    lazy?-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Repetition
    Lazy
    System.Boolean))

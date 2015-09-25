(library (system text regular-expressions syntax alternation)
  (export new
          is?
          alternation?
          add-alternative
          compile
          get-width
          alternatives)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.Alternation
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.Alternation a))
  (define (alternation? a)
    (clr-is System.Text.RegularExpressions.Syntax.Alternation a))
  (define-method-port
    add-alternative
    System.Text.RegularExpressions.Syntax.Alternation
    AddAlternative
    (System.Void System.Text.RegularExpressions.Syntax.Expression))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.Alternation
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    get-width
    System.Text.RegularExpressions.Syntax.Alternation
    GetWidth
    (System.Void System.Int32& System.Int32&))
  (define-field-port
    alternatives
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.Alternation
    Alternatives
    System.Text.RegularExpressions.Syntax.ExpressionCollection))

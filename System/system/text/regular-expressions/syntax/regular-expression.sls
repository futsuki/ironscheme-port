(library (system text regular-expressions syntax regular-expression)
  (export new
          is?
          regular-expression?
          compile
          group-count-get
          group-count-set!
          group-count-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.RegularExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.RegularExpression a))
  (define (regular-expression? a)
    (clr-is System.Text.RegularExpressions.Syntax.RegularExpression a))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.RegularExpression
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-field-port
    group-count-get
    group-count-set!
    group-count-update!
    (property:)
    System.Text.RegularExpressions.Syntax.RegularExpression
    GroupCount
    System.Int32))

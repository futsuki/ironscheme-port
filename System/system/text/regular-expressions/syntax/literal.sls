(library (system text regular-expressions syntax literal)
  (export new
          is?
          literal?
          get-anchor-info
          compile
          get-width
          is-complex?
          compile-literal
          string-get
          string-set!
          string-update!
          ignore-case?-get
          ignore-case?-set!
          ignore-case?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.Literal
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.Literal a))
  (define (literal? a)
    (clr-is System.Text.RegularExpressions.Syntax.Literal a))
  (define-method-port
    get-anchor-info
    System.Text.RegularExpressions.Syntax.Literal
    GetAnchorInfo
    (System.Text.RegularExpressions.Syntax.AnchorInfo System.Boolean))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.Literal
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    get-width
    System.Text.RegularExpressions.Syntax.Literal
    GetWidth
    (System.Void System.Int32& System.Int32&))
  (define-method-port
    is-complex?
    System.Text.RegularExpressions.Syntax.Literal
    IsComplex
    (System.Boolean))
  (define-method-port
    compile-literal
    System.Text.RegularExpressions.Syntax.Literal
    CompileLiteral
    (static:
      System.Void
      System.String
      System.Text.RegularExpressions.ICompiler
      System.Boolean
      System.Boolean))
  (define-field-port
    string-get
    string-set!
    string-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Literal
    String
    System.String)
  (define-field-port
    ignore-case?-get
    ignore-case?-set!
    ignore-case?-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Literal
    IgnoreCase
    System.Boolean))

(library (system text regular-expressions syntax reference)
  (export new
          is?
          reference?
          compile
          get-width
          is-complex?
          capturing-group-get
          capturing-group-set!
          capturing-group-update!
          ignore-case?-get
          ignore-case?-set!
          ignore-case?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.Reference
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.Reference a))
  (define (reference? a)
    (clr-is System.Text.RegularExpressions.Syntax.Reference a))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.Reference
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    get-width
    System.Text.RegularExpressions.Syntax.Reference
    GetWidth
    (System.Void System.Int32& System.Int32&))
  (define-method-port
    is-complex?
    System.Text.RegularExpressions.Syntax.Reference
    IsComplex
    (System.Boolean))
  (define-field-port
    capturing-group-get
    capturing-group-set!
    capturing-group-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Reference
    CapturingGroup
    System.Text.RegularExpressions.Syntax.CapturingGroup)
  (define-field-port
    ignore-case?-get
    ignore-case?-set!
    ignore-case?-update!
    (property:)
    System.Text.RegularExpressions.Syntax.Reference
    IgnoreCase
    System.Boolean))

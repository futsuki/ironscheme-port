(library (system text regular-expressions syntax capture-assertion)
  (export new
          is?
          capture-assertion?
          compile
          is-complex?
          capturing-group-get
          capturing-group-set!
          capturing-group-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.CaptureAssertion
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.CaptureAssertion a))
  (define (capture-assertion? a)
    (clr-is System.Text.RegularExpressions.Syntax.CaptureAssertion a))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.CaptureAssertion
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    is-complex?
    System.Text.RegularExpressions.Syntax.CaptureAssertion
    IsComplex
    (System.Boolean))
  (define-field-port
    capturing-group-get
    capturing-group-set!
    capturing-group-update!
    (property:)
    System.Text.RegularExpressions.Syntax.CaptureAssertion
    CapturingGroup
    System.Text.RegularExpressions.Syntax.CapturingGroup))

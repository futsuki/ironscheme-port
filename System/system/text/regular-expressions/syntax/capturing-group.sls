(library (system text regular-expressions syntax capturing-group)
  (export new
          is?
          capturing-group?
          compare-to
          compile
          is-complex?
          index-get
          index-set!
          index-update!
          name-get
          name-set!
          name-update!
          is-named?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.CapturingGroup
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.CapturingGroup a))
  (define (capturing-group? a)
    (clr-is System.Text.RegularExpressions.Syntax.CapturingGroup a))
  (define-method-port
    compare-to
    System.Text.RegularExpressions.Syntax.CapturingGroup
    CompareTo
    (System.Int32 System.Object))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.CapturingGroup
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    is-complex?
    System.Text.RegularExpressions.Syntax.CapturingGroup
    IsComplex
    (System.Boolean))
  (define-field-port
    index-get
    index-set!
    index-update!
    (property:)
    System.Text.RegularExpressions.Syntax.CapturingGroup
    Index
    System.Int32)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Text.RegularExpressions.Syntax.CapturingGroup
    Name
    System.String)
  (define-field-port
    is-named?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Syntax.CapturingGroup
    IsNamed
    System.Boolean))

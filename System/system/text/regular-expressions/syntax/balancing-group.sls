(library (system text regular-expressions syntax balancing-group)
  (export new
          is?
          balancing-group?
          compile
          balance-get
          balance-set!
          balance-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.BalancingGroup
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.BalancingGroup a))
  (define (balancing-group? a)
    (clr-is System.Text.RegularExpressions.Syntax.BalancingGroup a))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.BalancingGroup
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-field-port
    balance-get
    balance-set!
    balance-update!
    (property:)
    System.Text.RegularExpressions.Syntax.BalancingGroup
    Balance
    System.Text.RegularExpressions.Syntax.CapturingGroup))

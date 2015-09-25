(library (system text regular-expressions syntax non-backtracking-group)
  (export new is? non-backtracking-group? compile is-complex?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.NonBacktrackingGroup
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Text.RegularExpressions.Syntax.NonBacktrackingGroup
      a))
  (define (non-backtracking-group? a)
    (clr-is
      System.Text.RegularExpressions.Syntax.NonBacktrackingGroup
      a))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.NonBacktrackingGroup
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    is-complex?
    System.Text.RegularExpressions.Syntax.NonBacktrackingGroup
    IsComplex
    (System.Boolean)))

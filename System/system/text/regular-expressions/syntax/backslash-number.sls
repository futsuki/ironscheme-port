(library (system text regular-expressions syntax backslash-number)
  (export new is? backslash-number? compile resolve-reference?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.BackslashNumber
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.BackslashNumber a))
  (define (backslash-number? a)
    (clr-is System.Text.RegularExpressions.Syntax.BackslashNumber a))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.BackslashNumber
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    resolve-reference?
    System.Text.RegularExpressions.Syntax.BackslashNumber
    ResolveReference
    (System.Boolean System.String System.Collections.Hashtable)))

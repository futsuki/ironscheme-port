(library (system text regular-expressions interpreter)
  (export new is? interpreter? scan)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Interpreter
             a
             ...)))))
  (define (is? a) (clr-is System.Text.RegularExpressions.Interpreter a))
  (define (interpreter? a)
    (clr-is System.Text.RegularExpressions.Interpreter a))
  (define-method-port
    scan
    System.Text.RegularExpressions.Interpreter
    Scan
    (System.Text.RegularExpressions.Match
      System.Text.RegularExpressions.Regex
      System.String
      System.Int32
      System.Int32)))

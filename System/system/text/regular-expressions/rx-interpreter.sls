(library (system text regular-expressions rx-interpreter)
  (export new is? rx-interpreter? scan trace-rx?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.RxInterpreter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.RxInterpreter a))
  (define (rx-interpreter? a)
    (clr-is System.Text.RegularExpressions.RxInterpreter a))
  (define-method-port
    scan
    System.Text.RegularExpressions.RxInterpreter
    Scan
    (System.Text.RegularExpressions.Match
      System.Text.RegularExpressions.Regex
      System.String
      System.Int32
      System.Int32))
  (define-field-port
    trace-rx?
    #f
    #f
    (static:)
    System.Text.RegularExpressions.RxInterpreter
    trace_rx
    System.Boolean))

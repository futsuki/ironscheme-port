(library (system diagnostics console-trace-listener)
  (export new is? console-trace-listener?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.ConsoleTraceListener a ...)))))
  (define (is? a) (clr-is System.Diagnostics.ConsoleTraceListener a))
  (define (console-trace-listener? a)
    (clr-is System.Diagnostics.ConsoleTraceListener a)))
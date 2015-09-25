(library (system diagnostics performance-counter-manager)
  (export new is? performance-counter-manager?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.PerformanceCounterManager
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.PerformanceCounterManager a))
  (define (performance-counter-manager? a)
    (clr-is System.Diagnostics.PerformanceCounterManager a)))

(library (system diagnostics performance-counter-installer)
  (export new is? performance-counter-installer?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.PerformanceCounterInstaller
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.PerformanceCounterInstaller a))
  (define (performance-counter-installer? a)
    (clr-is System.Diagnostics.PerformanceCounterInstaller a)))

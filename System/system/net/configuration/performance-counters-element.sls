(library (system net configuration performance-counters-element)
  (export new
          is?
          performance-counters-element?
          enabled?-get
          enabled?-set!
          enabled?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.PerformanceCountersElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.PerformanceCountersElement a))
  (define (performance-counters-element? a)
    (clr-is System.Net.Configuration.PerformanceCountersElement a))
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.Net.Configuration.PerformanceCountersElement
    Enabled
    System.Boolean))

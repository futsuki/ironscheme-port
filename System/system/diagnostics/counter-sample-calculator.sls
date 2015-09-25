(library (system diagnostics counter-sample-calculator)
  (export is? counter-sample-calculator? compute-counter-value)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.CounterSampleCalculator a))
  (define (counter-sample-calculator? a)
    (clr-is System.Diagnostics.CounterSampleCalculator a))
  (define-method-port
    compute-counter-value
    System.Diagnostics.CounterSampleCalculator
    ComputeCounterValue
    (static:
      System.Single
      System.Diagnostics.CounterSample
      System.Diagnostics.CounterSample)
    (static: System.Single System.Diagnostics.CounterSample)))

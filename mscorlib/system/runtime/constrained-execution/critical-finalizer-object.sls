(library (system
          runtime
          constrained-execution
          critical-finalizer-object)
  (export is? critical-finalizer-object?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Runtime.ConstrainedExecution.CriticalFinalizerObject
      a))
  (define (critical-finalizer-object? a)
    (clr-is
      System.Runtime.ConstrainedExecution.CriticalFinalizerObject
      a)))

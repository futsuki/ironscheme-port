(library (system diagnostics trace-filter)
  (export is? trace-filter? should-trace?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.TraceFilter a))
  (define (trace-filter? a) (clr-is System.Diagnostics.TraceFilter a))
  (define-method-port
    should-trace?
    System.Diagnostics.TraceFilter
    ShouldTrace
    (System.Boolean
      System.Diagnostics.TraceEventCache
      System.String
      System.Diagnostics.TraceEventType
      System.Int32
      System.String
      System.Object[]
      System.Object
      System.Object[])))

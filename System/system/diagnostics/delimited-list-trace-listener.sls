(library (system diagnostics delimited-list-trace-listener)
  (export new
          is?
          delimited-list-trace-listener?
          trace-event
          trace-data
          delimiter-get
          delimiter-set!
          delimiter-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DelimitedListTraceListener
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.DelimitedListTraceListener a))
  (define (delimited-list-trace-listener? a)
    (clr-is System.Diagnostics.DelimitedListTraceListener a))
  (define-method-port
    trace-event
    System.Diagnostics.DelimitedListTraceListener
    TraceEvent
    (System.Void
      System.Diagnostics.TraceEventCache
      System.String
      System.Diagnostics.TraceEventType
      System.Int32
      System.String
      System.Object[])
    (System.Void
      System.Diagnostics.TraceEventCache
      System.String
      System.Diagnostics.TraceEventType
      System.Int32
      System.String))
  (define-method-port
    trace-data
    System.Diagnostics.DelimitedListTraceListener
    TraceData
    (System.Void
      System.Diagnostics.TraceEventCache
      System.String
      System.Diagnostics.TraceEventType
      System.Int32
      System.Object[])
    (System.Void
      System.Diagnostics.TraceEventCache
      System.String
      System.Diagnostics.TraceEventType
      System.Int32
      System.Object))
  (define-field-port
    delimiter-get
    delimiter-set!
    delimiter-update!
    (property:)
    System.Diagnostics.DelimitedListTraceListener
    Delimiter
    System.String))

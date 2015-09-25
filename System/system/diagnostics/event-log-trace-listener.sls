(library (system diagnostics event-log-trace-listener)
  (export new
          is?
          event-log-trace-listener?
          trace-event
          write
          write-line
          trace-data
          close
          event-log-get
          event-log-set!
          event-log-update!
          name-get
          name-set!
          name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.EventLogTraceListener a ...)))))
  (define (is? a) (clr-is System.Diagnostics.EventLogTraceListener a))
  (define (event-log-trace-listener? a)
    (clr-is System.Diagnostics.EventLogTraceListener a))
  (define-method-port
    trace-event
    System.Diagnostics.EventLogTraceListener
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
    write
    System.Diagnostics.EventLogTraceListener
    Write
    (System.Void System.String))
  (define-method-port
    write-line
    System.Diagnostics.EventLogTraceListener
    WriteLine
    (System.Void System.String))
  (define-method-port
    trace-data
    System.Diagnostics.EventLogTraceListener
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
  (define-method-port
    close
    System.Diagnostics.EventLogTraceListener
    Close
    (System.Void))
  (define-field-port
    event-log-get
    event-log-set!
    event-log-update!
    (property:)
    System.Diagnostics.EventLogTraceListener
    EventLog
    System.Diagnostics.EventLog)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Diagnostics.EventLogTraceListener
    Name
    System.String))

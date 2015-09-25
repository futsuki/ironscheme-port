(library (system diagnostics trace-event-cache)
  (export new
          is?
          trace-event-cache?
          callstack
          date-time
          logical-operation-stack
          process-id
          thread-id
          timestamp)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.TraceEventCache a ...)))))
  (define (is? a) (clr-is System.Diagnostics.TraceEventCache a))
  (define (trace-event-cache? a)
    (clr-is System.Diagnostics.TraceEventCache a))
  (define-field-port
    callstack
    #f
    #f
    (property:)
    System.Diagnostics.TraceEventCache
    Callstack
    System.String)
  (define-field-port
    date-time
    #f
    #f
    (property:)
    System.Diagnostics.TraceEventCache
    DateTime
    System.DateTime)
  (define-field-port
    logical-operation-stack
    #f
    #f
    (property:)
    System.Diagnostics.TraceEventCache
    LogicalOperationStack
    System.Collections.Stack)
  (define-field-port
    process-id
    #f
    #f
    (property:)
    System.Diagnostics.TraceEventCache
    ProcessId
    System.Int32)
  (define-field-port
    thread-id
    #f
    #f
    (property:)
    System.Diagnostics.TraceEventCache
    ThreadId
    System.String)
  (define-field-port
    timestamp
    #f
    #f
    (property:)
    System.Diagnostics.TraceEventCache
    Timestamp
    System.Int64))

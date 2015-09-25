(library (system diagnostics trace-listener)
  (export is?
          trace-listener?
          dispose
          trace-event
          trace-transfer
          write
          write-line
          fail
          trace-data
          flush
          close
          indent-level-get
          indent-level-set!
          indent-level-update!
          indent-size-get
          indent-size-set!
          indent-size-update!
          name-get
          name-set!
          name-update!
          is-thread-safe?
          attributes
          filter-get
          filter-set!
          filter-update!
          trace-output-options-get
          trace-output-options-set!
          trace-output-options-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.TraceListener a))
  (define (trace-listener? a)
    (clr-is System.Diagnostics.TraceListener a))
  (define-method-port
    dispose
    System.Diagnostics.TraceListener
    Dispose
    (System.Void))
  (define-method-port
    trace-event
    System.Diagnostics.TraceListener
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
      System.String)
    (System.Void
      System.Diagnostics.TraceEventCache
      System.String
      System.Diagnostics.TraceEventType
      System.Int32))
  (define-method-port
    trace-transfer
    System.Diagnostics.TraceListener
    TraceTransfer
    (System.Void
      System.Diagnostics.TraceEventCache
      System.String
      System.Int32
      System.String
      System.Guid))
  (define-method-port
    write
    System.Diagnostics.TraceListener
    Write
    (System.Void System.String System.String)
    (System.Void System.Object System.String)
    (System.Void System.String)
    (System.Void System.Object))
  (define-method-port
    write-line
    System.Diagnostics.TraceListener
    WriteLine
    (System.Void System.String System.String)
    (System.Void System.Object System.String)
    (System.Void System.String)
    (System.Void System.Object))
  (define-method-port
    fail
    System.Diagnostics.TraceListener
    Fail
    (System.Void System.String System.String)
    (System.Void System.String))
  (define-method-port
    trace-data
    System.Diagnostics.TraceListener
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
    flush
    System.Diagnostics.TraceListener
    Flush
    (System.Void))
  (define-method-port
    close
    System.Diagnostics.TraceListener
    Close
    (System.Void))
  (define-field-port
    indent-level-get
    indent-level-set!
    indent-level-update!
    (property:)
    System.Diagnostics.TraceListener
    IndentLevel
    System.Int32)
  (define-field-port
    indent-size-get
    indent-size-set!
    indent-size-update!
    (property:)
    System.Diagnostics.TraceListener
    IndentSize
    System.Int32)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Diagnostics.TraceListener
    Name
    System.String)
  (define-field-port
    is-thread-safe?
    #f
    #f
    (property:)
    System.Diagnostics.TraceListener
    IsThreadSafe
    System.Boolean)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Diagnostics.TraceListener
    Attributes
    System.Collections.Specialized.StringDictionary)
  (define-field-port
    filter-get
    filter-set!
    filter-update!
    (property:)
    System.Diagnostics.TraceListener
    Filter
    System.Diagnostics.TraceFilter)
  (define-field-port
    trace-output-options-get
    trace-output-options-set!
    trace-output-options-update!
    (property:)
    System.Diagnostics.TraceListener
    TraceOutputOptions
    System.Diagnostics.TraceOptions))

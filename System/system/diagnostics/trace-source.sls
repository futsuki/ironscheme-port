(library (system diagnostics trace-source)
  (export new
          is?
          trace-source?
          trace-event
          trace-transfer
          trace-data
          flush
          trace-information
          close
          attributes
          listeners
          name
          switch-get
          switch-set!
          switch-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.TraceSource a ...)))))
  (define (is? a) (clr-is System.Diagnostics.TraceSource a))
  (define (trace-source? a) (clr-is System.Diagnostics.TraceSource a))
  (define-method-port
    trace-event
    System.Diagnostics.TraceSource
    TraceEvent
    (System.Void
      System.Diagnostics.TraceEventType
      System.Int32
      System.String
      System.Object[])
    (System.Void
      System.Diagnostics.TraceEventType
      System.Int32
      System.String)
    (System.Void System.Diagnostics.TraceEventType System.Int32))
  (define-method-port
    trace-transfer
    System.Diagnostics.TraceSource
    TraceTransfer
    (System.Void System.Int32 System.String System.Guid))
  (define-method-port
    trace-data
    System.Diagnostics.TraceSource
    TraceData
    (System.Void
      System.Diagnostics.TraceEventType
      System.Int32
      System.Object[])
    (System.Void
      System.Diagnostics.TraceEventType
      System.Int32
      System.Object))
  (define-method-port
    flush
    System.Diagnostics.TraceSource
    Flush
    (System.Void))
  (define-method-port
    trace-information
    System.Diagnostics.TraceSource
    TraceInformation
    (System.Void System.String System.Object[])
    (System.Void System.String))
  (define-method-port
    close
    System.Diagnostics.TraceSource
    Close
    (System.Void))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Diagnostics.TraceSource
    Attributes
    System.Collections.Specialized.StringDictionary)
  (define-field-port
    listeners
    #f
    #f
    (property:)
    System.Diagnostics.TraceSource
    Listeners
    System.Diagnostics.TraceListenerCollection)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Diagnostics.TraceSource
    Name
    System.String)
  (define-field-port
    switch-get
    switch-set!
    switch-update!
    (property:)
    System.Diagnostics.TraceSource
    Switch
    System.Diagnostics.SourceSwitch))

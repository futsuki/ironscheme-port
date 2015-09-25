(library (system diagnostics xml-writer-trace-listener)
  (export new
          is?
          xml-writer-trace-listener?
          trace-event
          trace-transfer
          write
          write-line
          fail
          trace-data
          close)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.XmlWriterTraceListener a ...)))))
  (define (is? a) (clr-is System.Diagnostics.XmlWriterTraceListener a))
  (define (xml-writer-trace-listener? a)
    (clr-is System.Diagnostics.XmlWriterTraceListener a))
  (define-method-port
    trace-event
    System.Diagnostics.XmlWriterTraceListener
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
    trace-transfer
    System.Diagnostics.XmlWriterTraceListener
    TraceTransfer
    (System.Void
      System.Diagnostics.TraceEventCache
      System.String
      System.Int32
      System.String
      System.Guid))
  (define-method-port
    write
    System.Diagnostics.XmlWriterTraceListener
    Write
    (System.Void System.String))
  (define-method-port
    write-line
    System.Diagnostics.XmlWriterTraceListener
    WriteLine
    (System.Void System.String))
  (define-method-port
    fail
    System.Diagnostics.XmlWriterTraceListener
    Fail
    (System.Void System.String System.String))
  (define-method-port
    trace-data
    System.Diagnostics.XmlWriterTraceListener
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
    System.Diagnostics.XmlWriterTraceListener
    Close
    (System.Void)))

(library (system diagnostics text-writer-trace-listener)
  (export new
          is?
          text-writer-trace-listener?
          write
          write-line
          flush
          close
          writer-get
          writer-set!
          writer-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.TextWriterTraceListener
             a
             ...)))))
  (define (is? a) (clr-is System.Diagnostics.TextWriterTraceListener a))
  (define (text-writer-trace-listener? a)
    (clr-is System.Diagnostics.TextWriterTraceListener a))
  (define-method-port
    write
    System.Diagnostics.TextWriterTraceListener
    Write
    (System.Void System.String))
  (define-method-port
    write-line
    System.Diagnostics.TextWriterTraceListener
    WriteLine
    (System.Void System.String))
  (define-method-port
    flush
    System.Diagnostics.TextWriterTraceListener
    Flush
    (System.Void))
  (define-method-port
    close
    System.Diagnostics.TextWriterTraceListener
    Close
    (System.Void))
  (define-field-port
    writer-get
    writer-set!
    writer-update!
    (property:)
    System.Diagnostics.TextWriterTraceListener
    Writer
    System.IO.TextWriter))

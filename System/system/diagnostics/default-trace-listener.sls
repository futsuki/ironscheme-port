(library (system diagnostics default-trace-listener)
  (export new
          is?
          default-trace-listener?
          write
          write-line
          fail
          assert-ui-enabled?-get
          assert-ui-enabled?-set!
          assert-ui-enabled?-update!
          log-file-name-get
          log-file-name-set!
          log-file-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.DefaultTraceListener a ...)))))
  (define (is? a) (clr-is System.Diagnostics.DefaultTraceListener a))
  (define (default-trace-listener? a)
    (clr-is System.Diagnostics.DefaultTraceListener a))
  (define-method-port
    write
    System.Diagnostics.DefaultTraceListener
    Write
    (System.Void System.String))
  (define-method-port
    write-line
    System.Diagnostics.DefaultTraceListener
    WriteLine
    (System.Void System.String))
  (define-method-port
    fail
    System.Diagnostics.DefaultTraceListener
    Fail
    (System.Void System.String System.String)
    (System.Void System.String))
  (define-field-port
    assert-ui-enabled?-get
    assert-ui-enabled?-set!
    assert-ui-enabled?-update!
    (property:)
    System.Diagnostics.DefaultTraceListener
    AssertUiEnabled
    System.Boolean)
  (define-field-port
    log-file-name-get
    log-file-name-set!
    log-file-name-update!
    (property:)
    System.Diagnostics.DefaultTraceListener
    LogFileName
    System.String))

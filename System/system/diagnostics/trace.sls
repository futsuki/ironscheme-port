(library (system diagnostics trace)
  (export is?
          trace?
          unindent
          indent
          assert
          trace-error
          write
          trace-warning
          write-line-if
          refresh
          write-line
          write-if
          fail
          flush
          trace-information
          close
          auto-flush?-get
          auto-flush?-set!
          auto-flush?-update!
          indent-level-get
          indent-level-set!
          indent-level-update!
          indent-size-get
          indent-size-set!
          indent-size-update!
          listeners
          correlation-manager
          use-global-lock?-get
          use-global-lock?-set!
          use-global-lock?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.Trace a))
  (define (trace? a) (clr-is System.Diagnostics.Trace a))
  (define-method-port
    unindent
    System.Diagnostics.Trace
    Unindent
    (static: System.Void))
  (define-method-port
    indent
    System.Diagnostics.Trace
    Indent
    (static: System.Void))
  (define-method-port
    assert
    System.Diagnostics.Trace
    Assert
    (static: System.Void System.Boolean System.String System.String)
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean))
  (define-method-port
    trace-error
    System.Diagnostics.Trace
    TraceError
    (static: System.Void System.String System.Object[])
    (static: System.Void System.String))
  (define-method-port
    write
    System.Diagnostics.Trace
    Write
    (static: System.Void System.String System.String)
    (static: System.Void System.Object System.String)
    (static: System.Void System.String)
    (static: System.Void System.Object))
  (define-method-port
    trace-warning
    System.Diagnostics.Trace
    TraceWarning
    (static: System.Void System.String System.Object[])
    (static: System.Void System.String))
  (define-method-port
    write-line-if
    System.Diagnostics.Trace
    WriteLineIf
    (static: System.Void System.Boolean System.String System.String)
    (static: System.Void System.Boolean System.Object System.String)
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean System.Object))
  (define-method-port
    refresh
    System.Diagnostics.Trace
    Refresh
    (static: System.Void))
  (define-method-port
    write-line
    System.Diagnostics.Trace
    WriteLine
    (static: System.Void System.String System.String)
    (static: System.Void System.Object System.String)
    (static: System.Void System.String)
    (static: System.Void System.Object))
  (define-method-port
    write-if
    System.Diagnostics.Trace
    WriteIf
    (static: System.Void System.Boolean System.String System.String)
    (static: System.Void System.Boolean System.Object System.String)
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean System.Object))
  (define-method-port
    fail
    System.Diagnostics.Trace
    Fail
    (static: System.Void System.String System.String)
    (static: System.Void System.String))
  (define-method-port
    flush
    System.Diagnostics.Trace
    Flush
    (static: System.Void))
  (define-method-port
    trace-information
    System.Diagnostics.Trace
    TraceInformation
    (static: System.Void System.String System.Object[])
    (static: System.Void System.String))
  (define-method-port
    close
    System.Diagnostics.Trace
    Close
    (static: System.Void))
  (define-field-port
    auto-flush?-get
    auto-flush?-set!
    auto-flush?-update!
    (static: property:)
    System.Diagnostics.Trace
    AutoFlush
    System.Boolean)
  (define-field-port
    indent-level-get
    indent-level-set!
    indent-level-update!
    (static: property:)
    System.Diagnostics.Trace
    IndentLevel
    System.Int32)
  (define-field-port
    indent-size-get
    indent-size-set!
    indent-size-update!
    (static: property:)
    System.Diagnostics.Trace
    IndentSize
    System.Int32)
  (define-field-port
    listeners
    #f
    #f
    (static: property:)
    System.Diagnostics.Trace
    Listeners
    System.Diagnostics.TraceListenerCollection)
  (define-field-port
    correlation-manager
    #f
    #f
    (static: property:)
    System.Diagnostics.Trace
    CorrelationManager
    System.Diagnostics.CorrelationManager)
  (define-field-port
    use-global-lock?-get
    use-global-lock?-set!
    use-global-lock?-update!
    (static: property:)
    System.Diagnostics.Trace
    UseGlobalLock
    System.Boolean))

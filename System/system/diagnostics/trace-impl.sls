(library (system diagnostics trace-impl)
  (export is?
          trace-impl?
          unindent
          indent
          assert
          write
          write-line-if
          write-line
          write-if
          fail
          flush
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
  (define (is? a) (clr-is System.Diagnostics.TraceImpl a))
  (define (trace-impl? a) (clr-is System.Diagnostics.TraceImpl a))
  (define-method-port
    unindent
    System.Diagnostics.TraceImpl
    Unindent
    (static: System.Void))
  (define-method-port
    indent
    System.Diagnostics.TraceImpl
    Indent
    (static: System.Void))
  (define-method-port
    assert
    System.Diagnostics.TraceImpl
    Assert
    (static: System.Void System.Boolean System.String System.String)
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean))
  (define-method-port
    write
    System.Diagnostics.TraceImpl
    Write
    (static: System.Void System.String System.String)
    (static: System.Void System.Object System.String)
    (static: System.Void System.String)
    (static: System.Void System.Object))
  (define-method-port
    write-line-if
    System.Diagnostics.TraceImpl
    WriteLineIf
    (static: System.Void System.Boolean System.String System.String)
    (static: System.Void System.Boolean System.Object System.String)
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean System.Object))
  (define-method-port
    write-line
    System.Diagnostics.TraceImpl
    WriteLine
    (static: System.Void System.String System.String)
    (static: System.Void System.Object System.String)
    (static: System.Void System.String)
    (static: System.Void System.Object))
  (define-method-port
    write-if
    System.Diagnostics.TraceImpl
    WriteIf
    (static: System.Void System.Boolean System.String System.String)
    (static: System.Void System.Boolean System.Object System.String)
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean System.Object))
  (define-method-port
    fail
    System.Diagnostics.TraceImpl
    Fail
    (static: System.Void System.String System.String)
    (static: System.Void System.String))
  (define-method-port
    flush
    System.Diagnostics.TraceImpl
    Flush
    (static: System.Void))
  (define-method-port
    close
    System.Diagnostics.TraceImpl
    Close
    (static: System.Void))
  (define-field-port
    auto-flush?-get
    auto-flush?-set!
    auto-flush?-update!
    (static: property:)
    System.Diagnostics.TraceImpl
    AutoFlush
    System.Boolean)
  (define-field-port
    indent-level-get
    indent-level-set!
    indent-level-update!
    (static: property:)
    System.Diagnostics.TraceImpl
    IndentLevel
    System.Int32)
  (define-field-port
    indent-size-get
    indent-size-set!
    indent-size-update!
    (static: property:)
    System.Diagnostics.TraceImpl
    IndentSize
    System.Int32)
  (define-field-port
    listeners
    #f
    #f
    (static: property:)
    System.Diagnostics.TraceImpl
    Listeners
    System.Diagnostics.TraceListenerCollection)
  (define-field-port
    correlation-manager
    #f
    #f
    (static: property:)
    System.Diagnostics.TraceImpl
    CorrelationManager
    System.Diagnostics.CorrelationManager)
  (define-field-port
    use-global-lock?-get
    use-global-lock?-set!
    use-global-lock?-update!
    (static: property:)
    System.Diagnostics.TraceImpl
    UseGlobalLock
    System.Boolean))

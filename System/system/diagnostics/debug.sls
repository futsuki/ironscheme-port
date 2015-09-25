(library (system diagnostics debug)
  (export is?
          debug?
          unindent
          indent
          assert
          print
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
          listeners)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.Debug a))
  (define (debug? a) (clr-is System.Diagnostics.Debug a))
  (define-method-port
    unindent
    System.Diagnostics.Debug
    Unindent
    (static: System.Void))
  (define-method-port
    indent
    System.Diagnostics.Debug
    Indent
    (static: System.Void))
  (define-method-port
    assert
    System.Diagnostics.Debug
    Assert
    (static: System.Void System.Boolean System.String System.String)
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean))
  (define-method-port
    print
    System.Diagnostics.Debug
    Print
    (static: System.Void System.String System.Object[])
    (static: System.Void System.String))
  (define-method-port
    write
    System.Diagnostics.Debug
    Write
    (static: System.Void System.String System.String)
    (static: System.Void System.Object System.String)
    (static: System.Void System.String)
    (static: System.Void System.Object))
  (define-method-port
    write-line-if
    System.Diagnostics.Debug
    WriteLineIf
    (static: System.Void System.Boolean System.String System.String)
    (static: System.Void System.Boolean System.Object System.String)
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean System.Object))
  (define-method-port
    write-line
    System.Diagnostics.Debug
    WriteLine
    (static: System.Void System.String System.String)
    (static: System.Void System.Object System.String)
    (static: System.Void System.String)
    (static: System.Void System.Object))
  (define-method-port
    write-if
    System.Diagnostics.Debug
    WriteIf
    (static: System.Void System.Boolean System.String System.String)
    (static: System.Void System.Boolean System.Object System.String)
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean System.Object))
  (define-method-port
    fail
    System.Diagnostics.Debug
    Fail
    (static: System.Void System.String System.String)
    (static: System.Void System.String))
  (define-method-port
    flush
    System.Diagnostics.Debug
    Flush
    (static: System.Void))
  (define-method-port
    close
    System.Diagnostics.Debug
    Close
    (static: System.Void))
  (define-field-port
    auto-flush?-get
    auto-flush?-set!
    auto-flush?-update!
    (static: property:)
    System.Diagnostics.Debug
    AutoFlush
    System.Boolean)
  (define-field-port
    indent-level-get
    indent-level-set!
    indent-level-update!
    (static: property:)
    System.Diagnostics.Debug
    IndentLevel
    System.Int32)
  (define-field-port
    indent-size-get
    indent-size-set!
    indent-size-update!
    (static: property:)
    System.Diagnostics.Debug
    IndentSize
    System.Int32)
  (define-field-port
    listeners
    #f
    #f
    (static: property:)
    System.Diagnostics.Debug
    Listeners
    System.Diagnostics.TraceListenerCollection))

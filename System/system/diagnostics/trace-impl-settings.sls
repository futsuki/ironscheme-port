(library (system diagnostics trace-impl-settings)
  (export new
          is?
          trace-impl-settings?
          key
          auto-flush?-get
          auto-flush?-set!
          auto-flush?-update!
          indent-level-get
          indent-level-set!
          indent-level-update!
          indent-size-get
          indent-size-set!
          indent-size-update!
          listeners-get
          listeners-set!
          listeners-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.TraceImplSettings a ...)))))
  (define (is? a) (clr-is System.Diagnostics.TraceImplSettings a))
  (define (trace-impl-settings? a)
    (clr-is System.Diagnostics.TraceImplSettings a))
  (define-field-port
    key
    #f
    #f
    (static:)
    System.Diagnostics.TraceImplSettings
    Key
    System.String)
  (define-field-port
    auto-flush?-get
    auto-flush?-set!
    auto-flush?-update!
    ()
    System.Diagnostics.TraceImplSettings
    AutoFlush
    System.Boolean)
  (define-field-port
    indent-level-get
    indent-level-set!
    indent-level-update!
    ()
    System.Diagnostics.TraceImplSettings
    IndentLevel
    System.Int32)
  (define-field-port
    indent-size-get
    indent-size-set!
    indent-size-update!
    ()
    System.Diagnostics.TraceImplSettings
    IndentSize
    System.Int32)
  (define-field-port
    listeners-get
    listeners-set!
    listeners-update!
    ()
    System.Diagnostics.TraceImplSettings
    Listeners
    System.Diagnostics.TraceListenerCollection))

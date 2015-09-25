(library (system diagnostics trace-switch)
  (export new
          is?
          trace-switch?
          level-get
          level-set!
          level-update!
          trace-error?
          trace-warning?
          trace-info?
          trace-verbose?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.TraceSwitch a ...)))))
  (define (is? a) (clr-is System.Diagnostics.TraceSwitch a))
  (define (trace-switch? a) (clr-is System.Diagnostics.TraceSwitch a))
  (define-field-port
    level-get
    level-set!
    level-update!
    (property:)
    System.Diagnostics.TraceSwitch
    Level
    System.Diagnostics.TraceLevel)
  (define-field-port
    trace-error?
    #f
    #f
    (property:)
    System.Diagnostics.TraceSwitch
    TraceError
    System.Boolean)
  (define-field-port
    trace-warning?
    #f
    #f
    (property:)
    System.Diagnostics.TraceSwitch
    TraceWarning
    System.Boolean)
  (define-field-port
    trace-info?
    #f
    #f
    (property:)
    System.Diagnostics.TraceSwitch
    TraceInfo
    System.Boolean)
  (define-field-port
    trace-verbose?
    #f
    #f
    (property:)
    System.Diagnostics.TraceSwitch
    TraceVerbose
    System.Boolean))

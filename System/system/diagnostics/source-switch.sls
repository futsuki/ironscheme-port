(library (system diagnostics source-switch)
  (export new
          is?
          source-switch?
          should-trace?
          level-get
          level-set!
          level-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.SourceSwitch a ...)))))
  (define (is? a) (clr-is System.Diagnostics.SourceSwitch a))
  (define (source-switch? a) (clr-is System.Diagnostics.SourceSwitch a))
  (define-method-port
    should-trace?
    System.Diagnostics.SourceSwitch
    ShouldTrace
    (System.Boolean System.Diagnostics.TraceEventType))
  (define-field-port
    level-get
    level-set!
    level-update!
    (property:)
    System.Diagnostics.SourceSwitch
    Level
    System.Diagnostics.SourceLevels))

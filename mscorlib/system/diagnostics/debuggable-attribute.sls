(library (system diagnostics debuggable-attribute)
  (export new
          is?
          debuggable-attribute?
          debugging-flags
          is-jittracking-enabled?
          is-jitoptimizer-disabled?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.DebuggableAttribute a ...)))))
  (define (is? a) (clr-is System.Diagnostics.DebuggableAttribute a))
  (define (debuggable-attribute? a)
    (clr-is System.Diagnostics.DebuggableAttribute a))
  (define-field-port
    debugging-flags
    #f
    #f
    (property:)
    System.Diagnostics.DebuggableAttribute
    DebuggingFlags
    System.Diagnostics.DebuggableAttribute+DebuggingModes)
  (define-field-port
    is-jittracking-enabled?
    #f
    #f
    (property:)
    System.Diagnostics.DebuggableAttribute
    IsJITTrackingEnabled
    System.Boolean)
  (define-field-port
    is-jitoptimizer-disabled?
    #f
    #f
    (property:)
    System.Diagnostics.DebuggableAttribute
    IsJITOptimizerDisabled
    System.Boolean))

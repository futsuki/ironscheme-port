(library (system diagnostics counter-creation-data)
  (export new
          is?
          counter-creation-data?
          counter-help-get
          counter-help-set!
          counter-help-update!
          counter-name-get
          counter-name-set!
          counter-name-update!
          counter-type-get
          counter-type-set!
          counter-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.CounterCreationData a ...)))))
  (define (is? a) (clr-is System.Diagnostics.CounterCreationData a))
  (define (counter-creation-data? a)
    (clr-is System.Diagnostics.CounterCreationData a))
  (define-field-port
    counter-help-get
    counter-help-set!
    counter-help-update!
    (property:)
    System.Diagnostics.CounterCreationData
    CounterHelp
    System.String)
  (define-field-port
    counter-name-get
    counter-name-set!
    counter-name-update!
    (property:)
    System.Diagnostics.CounterCreationData
    CounterName
    System.String)
  (define-field-port
    counter-type-get
    counter-type-set!
    counter-type-update!
    (property:)
    System.Diagnostics.CounterCreationData
    CounterType
    System.Diagnostics.PerformanceCounterType))

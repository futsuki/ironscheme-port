(library (system diagnostics instance-data)
  (export new is? instance-data? instance-name raw-value sample)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.InstanceData a ...)))))
  (define (is? a) (clr-is System.Diagnostics.InstanceData a))
  (define (instance-data? a) (clr-is System.Diagnostics.InstanceData a))
  (define-field-port
    instance-name
    #f
    #f
    (property:)
    System.Diagnostics.InstanceData
    InstanceName
    System.String)
  (define-field-port
    raw-value
    #f
    #f
    (property:)
    System.Diagnostics.InstanceData
    RawValue
    System.Int64)
  (define-field-port
    sample
    #f
    #f
    (property:)
    System.Diagnostics.InstanceData
    Sample
    System.Diagnostics.CounterSample))

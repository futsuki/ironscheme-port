(library (system enterprise-services synchronization-attribute)
  (export new is? synchronization-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.SynchronizationAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.SynchronizationAttribute a))
  (define (synchronization-attribute? a)
    (clr-is System.EnterpriseServices.SynchronizationAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.EnterpriseServices.SynchronizationAttribute
    Value
    System.EnterpriseServices.SynchronizationOption))

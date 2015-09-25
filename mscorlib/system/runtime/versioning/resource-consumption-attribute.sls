(library (system runtime versioning resource-consumption-attribute)
  (export new
          is?
          resource-consumption-attribute?
          consumption-scope
          resource-scope)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Versioning.ResourceConsumptionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Versioning.ResourceConsumptionAttribute a))
  (define (resource-consumption-attribute? a)
    (clr-is System.Runtime.Versioning.ResourceConsumptionAttribute a))
  (define-field-port
    consumption-scope
    #f
    #f
    (property:)
    System.Runtime.Versioning.ResourceConsumptionAttribute
    ConsumptionScope
    System.Runtime.Versioning.ResourceScope)
  (define-field-port
    resource-scope
    #f
    #f
    (property:)
    System.Runtime.Versioning.ResourceConsumptionAttribute
    ResourceScope
    System.Runtime.Versioning.ResourceScope))

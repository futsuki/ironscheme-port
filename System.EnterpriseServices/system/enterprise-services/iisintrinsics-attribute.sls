(library (system enterprise-services iisintrinsics-attribute)
  (export new is? iisintrinsics-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.IISIntrinsicsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.IISIntrinsicsAttribute a))
  (define (iisintrinsics-attribute? a)
    (clr-is System.EnterpriseServices.IISIntrinsicsAttribute a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.EnterpriseServices.IISIntrinsicsAttribute
    Value
    System.Boolean))

(library (system enterprise-services comtiintrinsics-attribute)
  (export new is? comtiintrinsics-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.COMTIIntrinsicsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.COMTIIntrinsicsAttribute a))
  (define (comtiintrinsics-attribute? a)
    (clr-is System.EnterpriseServices.COMTIIntrinsicsAttribute a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.EnterpriseServices.COMTIIntrinsicsAttribute
    Value
    System.Boolean))

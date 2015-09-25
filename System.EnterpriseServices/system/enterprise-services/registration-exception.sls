(library (system enterprise-services registration-exception)
  (export new is? registration-exception? get-object-data error-info)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.RegistrationException
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.RegistrationException a))
  (define (registration-exception? a)
    (clr-is System.EnterpriseServices.RegistrationException a))
  (define-method-port
    get-object-data
    System.EnterpriseServices.RegistrationException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    error-info
    #f
    #f
    (property:)
    System.EnterpriseServices.RegistrationException
    ErrorInfo
    System.EnterpriseServices.RegistrationErrorInfo[]))

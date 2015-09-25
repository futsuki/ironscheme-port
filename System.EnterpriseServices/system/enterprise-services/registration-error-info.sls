(library (system enterprise-services registration-error-info)
  (export is?
          registration-error-info?
          error-code
          error-string
          major-ref
          minor-ref
          name)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.EnterpriseServices.RegistrationErrorInfo a))
  (define (registration-error-info? a)
    (clr-is System.EnterpriseServices.RegistrationErrorInfo a))
  (define-field-port
    error-code
    #f
    #f
    (property:)
    System.EnterpriseServices.RegistrationErrorInfo
    ErrorCode
    System.Int32)
  (define-field-port
    error-string
    #f
    #f
    (property:)
    System.EnterpriseServices.RegistrationErrorInfo
    ErrorString
    System.String)
  (define-field-port
    major-ref
    #f
    #f
    (property:)
    System.EnterpriseServices.RegistrationErrorInfo
    MajorRef
    System.String)
  (define-field-port
    minor-ref
    #f
    #f
    (property:)
    System.EnterpriseServices.RegistrationErrorInfo
    MinorRef
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.EnterpriseServices.RegistrationErrorInfo
    Name
    System.String))

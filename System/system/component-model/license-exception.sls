(library (system component-model license-exception)
  (export new is? license-exception? get-object-data licensed-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.LicenseException a ...)))))
  (define (is? a) (clr-is System.ComponentModel.LicenseException a))
  (define (license-exception? a)
    (clr-is System.ComponentModel.LicenseException a))
  (define-method-port
    get-object-data
    System.ComponentModel.LicenseException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    licensed-type
    #f
    #f
    (property:)
    System.ComponentModel.LicenseException
    LicensedType
    System.Type))

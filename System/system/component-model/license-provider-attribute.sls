(library (system component-model license-provider-attribute)
  (export new
          is?
          license-provider-attribute?
          get-hash-code
          equals?
          default
          license-provider
          type-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.LicenseProviderAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.LicenseProviderAttribute a))
  (define (license-provider-attribute? a)
    (clr-is System.ComponentModel.LicenseProviderAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.LicenseProviderAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.LicenseProviderAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.LicenseProviderAttribute
    Default
    System.ComponentModel.LicenseProviderAttribute)
  (define-field-port
    license-provider
    #f
    #f
    (property:)
    System.ComponentModel.LicenseProviderAttribute
    LicenseProvider
    System.Type)
  (define-field-port
    type-id
    #f
    #f
    (property:)
    System.ComponentModel.LicenseProviderAttribute
    TypeId
    System.Object))

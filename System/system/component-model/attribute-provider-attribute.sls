(library (system component-model attribute-provider-attribute)
  (export new is? attribute-provider-attribute? property-name type-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.AttributeProviderAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.AttributeProviderAttribute a))
  (define (attribute-provider-attribute? a)
    (clr-is System.ComponentModel.AttributeProviderAttribute a))
  (define-field-port
    property-name
    #f
    #f
    (property:)
    System.ComponentModel.AttributeProviderAttribute
    PropertyName
    System.String)
  (define-field-port
    type-name
    #f
    #f
    (property:)
    System.ComponentModel.AttributeProviderAttribute
    TypeName
    System.String))

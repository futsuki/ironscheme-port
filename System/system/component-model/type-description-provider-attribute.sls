(library (system component-model type-description-provider-attribute)
  (export new is? type-description-provider-attribute? type-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.TypeDescriptionProviderAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.TypeDescriptionProviderAttribute a))
  (define (type-description-provider-attribute? a)
    (clr-is System.ComponentModel.TypeDescriptionProviderAttribute a))
  (define-field-port
    type-name
    #f
    #f
    (property:)
    System.ComponentModel.TypeDescriptionProviderAttribute
    TypeName
    System.String))

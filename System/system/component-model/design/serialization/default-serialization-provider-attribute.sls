(library (system
          component-model
          design
          serialization
          default-serialization-provider-attribute)
  (export new
          is?
          default-serialization-provider-attribute?
          provider-type-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.Serialization.DefaultSerializationProviderAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.ComponentModel.Design.Serialization.DefaultSerializationProviderAttribute
      a))
  (define (default-serialization-provider-attribute? a)
    (clr-is
      System.ComponentModel.Design.Serialization.DefaultSerializationProviderAttribute
      a))
  (define-field-port
    provider-type-name
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.DefaultSerializationProviderAttribute
    ProviderTypeName
    System.String))

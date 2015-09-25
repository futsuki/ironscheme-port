(library (system configuration configuration-property)
  (export new
          is?
          configuration-property?
          converter
          default-value
          is-key?
          is-required?
          is-default-collection?
          name
          description
          type
          validator)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationProperty
             a
             ...)))))
  (define (is? a) (clr-is System.Configuration.ConfigurationProperty a))
  (define (configuration-property? a)
    (clr-is System.Configuration.ConfigurationProperty a))
  (define-field-port
    converter
    #f
    #f
    (property:)
    System.Configuration.ConfigurationProperty
    Converter
    System.ComponentModel.TypeConverter)
  (define-field-port
    default-value
    #f
    #f
    (property:)
    System.Configuration.ConfigurationProperty
    DefaultValue
    System.Object)
  (define-field-port
    is-key?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationProperty
    IsKey
    System.Boolean)
  (define-field-port
    is-required?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationProperty
    IsRequired
    System.Boolean)
  (define-field-port
    is-default-collection?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationProperty
    IsDefaultCollection
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Configuration.ConfigurationProperty
    Name
    System.String)
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Configuration.ConfigurationProperty
    Description
    System.String)
  (define-field-port
    type
    #f
    #f
    (property:)
    System.Configuration.ConfigurationProperty
    Type
    System.Type)
  (define-field-port
    validator
    #f
    #f
    (property:)
    System.Configuration.ConfigurationProperty
    Validator
    System.Configuration.ConfigurationValidatorBase))

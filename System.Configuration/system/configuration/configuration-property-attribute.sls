(library (system configuration configuration-property-attribute)
  (export new
          is?
          configuration-property-attribute?
          is-key?-get
          is-key?-set!
          is-key?-update!
          is-default-collection?-get
          is-default-collection?-set!
          is-default-collection?-update!
          default-value-get
          default-value-set!
          default-value-update!
          options-get
          options-set!
          options-update!
          name
          is-required?-get
          is-required?-set!
          is-required?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationPropertyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationPropertyAttribute a))
  (define (configuration-property-attribute? a)
    (clr-is System.Configuration.ConfigurationPropertyAttribute a))
  (define-field-port
    is-key?-get
    is-key?-set!
    is-key?-update!
    (property:)
    System.Configuration.ConfigurationPropertyAttribute
    IsKey
    System.Boolean)
  (define-field-port
    is-default-collection?-get
    is-default-collection?-set!
    is-default-collection?-update!
    (property:)
    System.Configuration.ConfigurationPropertyAttribute
    IsDefaultCollection
    System.Boolean)
  (define-field-port
    default-value-get
    default-value-set!
    default-value-update!
    (property:)
    System.Configuration.ConfigurationPropertyAttribute
    DefaultValue
    System.Object)
  (define-field-port
    options-get
    options-set!
    options-update!
    (property:)
    System.Configuration.ConfigurationPropertyAttribute
    Options
    System.Configuration.ConfigurationPropertyOptions)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Configuration.ConfigurationPropertyAttribute
    Name
    System.String)
  (define-field-port
    is-required?-get
    is-required?-set!
    is-required?-update!
    (property:)
    System.Configuration.ConfigurationPropertyAttribute
    IsRequired
    System.Boolean))

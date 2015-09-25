(library (system configuration settings-property)
  (export new
          is?
          settings-property?
          attributes
          default-value-get
          default-value-set!
          default-value-update!
          is-read-only?-get
          is-read-only?-set!
          is-read-only?-update!
          name-get
          name-set!
          name-update!
          property-type-get
          property-type-set!
          property-type-update!
          provider-get
          provider-set!
          provider-update!
          serialize-as-get
          serialize-as-set!
          serialize-as-update!
          throw-on-error-deserializing?-get
          throw-on-error-deserializing?-set!
          throw-on-error-deserializing?-update!
          throw-on-error-serializing?-get
          throw-on-error-serializing?-set!
          throw-on-error-serializing?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.SettingsProperty a ...)))))
  (define (is? a) (clr-is System.Configuration.SettingsProperty a))
  (define (settings-property? a)
    (clr-is System.Configuration.SettingsProperty a))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Configuration.SettingsProperty
    Attributes
    System.Configuration.SettingsAttributeDictionary)
  (define-field-port
    default-value-get
    default-value-set!
    default-value-update!
    (property:)
    System.Configuration.SettingsProperty
    DefaultValue
    System.Object)
  (define-field-port
    is-read-only?-get
    is-read-only?-set!
    is-read-only?-update!
    (property:)
    System.Configuration.SettingsProperty
    IsReadOnly
    System.Boolean)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Configuration.SettingsProperty
    Name
    System.String)
  (define-field-port
    property-type-get
    property-type-set!
    property-type-update!
    (property:)
    System.Configuration.SettingsProperty
    PropertyType
    System.Type)
  (define-field-port
    provider-get
    provider-set!
    provider-update!
    (property:)
    System.Configuration.SettingsProperty
    Provider
    System.Configuration.SettingsProvider)
  (define-field-port
    serialize-as-get
    serialize-as-set!
    serialize-as-update!
    (property:)
    System.Configuration.SettingsProperty
    SerializeAs
    System.Configuration.SettingsSerializeAs)
  (define-field-port
    throw-on-error-deserializing?-get
    throw-on-error-deserializing?-set!
    throw-on-error-deserializing?-update!
    (property:)
    System.Configuration.SettingsProperty
    ThrowOnErrorDeserializing
    System.Boolean)
  (define-field-port
    throw-on-error-serializing?-get
    throw-on-error-serializing?-set!
    throw-on-error-serializing?-update!
    (property:)
    System.Configuration.SettingsProperty
    ThrowOnErrorSerializing
    System.Boolean))

(library (system configuration settings-property-value)
  (export new
          is?
          settings-property-value?
          deserialized?-get
          deserialized?-set!
          deserialized?-update!
          is-dirty?-get
          is-dirty?-set!
          is-dirty?-update!
          name
          property
          property-value-get
          property-value-set!
          property-value-update!
          serialized-value-get
          serialized-value-set!
          serialized-value-update!
          using-default-value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsPropertyValue
             a
             ...)))))
  (define (is? a) (clr-is System.Configuration.SettingsPropertyValue a))
  (define (settings-property-value? a)
    (clr-is System.Configuration.SettingsPropertyValue a))
  (define-field-port
    deserialized?-get
    deserialized?-set!
    deserialized?-update!
    (property:)
    System.Configuration.SettingsPropertyValue
    Deserialized
    System.Boolean)
  (define-field-port
    is-dirty?-get
    is-dirty?-set!
    is-dirty?-update!
    (property:)
    System.Configuration.SettingsPropertyValue
    IsDirty
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyValue
    Name
    System.String)
  (define-field-port
    property
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyValue
    Property
    System.Configuration.SettingsProperty)
  (define-field-port
    property-value-get
    property-value-set!
    property-value-update!
    (property:)
    System.Configuration.SettingsPropertyValue
    PropertyValue
    System.Object)
  (define-field-port
    serialized-value-get
    serialized-value-set!
    serialized-value-update!
    (property:)
    System.Configuration.SettingsPropertyValue
    SerializedValue
    System.Object)
  (define-field-port
    using-default-value?
    #f
    #f
    (property:)
    System.Configuration.SettingsPropertyValue
    UsingDefaultValue
    System.Boolean))

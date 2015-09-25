(library (system configuration setting-element)
  (export new
          is?
          setting-element?
          get-hash-code
          equals?
          name-get
          name-set!
          name-update!
          value-get
          value-set!
          value-update!
          serialize-as-get
          serialize-as-set!
          serialize-as-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.SettingElement a ...)))))
  (define (is? a) (clr-is System.Configuration.SettingElement a))
  (define (setting-element? a)
    (clr-is System.Configuration.SettingElement a))
  (define-method-port
    get-hash-code
    System.Configuration.SettingElement
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Configuration.SettingElement
    Equals
    (System.Boolean System.Object))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Configuration.SettingElement
    Name
    System.String)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Configuration.SettingElement
    Value
    System.Configuration.SettingValueElement)
  (define-field-port
    serialize-as-get
    serialize-as-set!
    serialize-as-update!
    (property:)
    System.Configuration.SettingElement
    SerializeAs
    System.Configuration.SettingsSerializeAs))

(library (system configuration settings-serialize-as-attribute)
  (export new is? settings-serialize-as-attribute? serialize-as)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsSerializeAsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsSerializeAsAttribute a))
  (define (settings-serialize-as-attribute? a)
    (clr-is System.Configuration.SettingsSerializeAsAttribute a))
  (define-field-port
    serialize-as
    #f
    #f
    (property:)
    System.Configuration.SettingsSerializeAsAttribute
    SerializeAs
    System.Configuration.SettingsSerializeAs))

(library (system configuration default-setting-value-attribute)
  (export new is? default-setting-value-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.DefaultSettingValueAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.DefaultSettingValueAttribute a))
  (define (default-setting-value-attribute? a)
    (clr-is System.Configuration.DefaultSettingValueAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Configuration.DefaultSettingValueAttribute
    Value
    System.String))

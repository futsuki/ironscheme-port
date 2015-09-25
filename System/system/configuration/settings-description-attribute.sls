(library (system configuration settings-description-attribute)
  (export new is? settings-description-attribute? description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsDescriptionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsDescriptionAttribute a))
  (define (settings-description-attribute? a)
    (clr-is System.Configuration.SettingsDescriptionAttribute a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Configuration.SettingsDescriptionAttribute
    Description
    System.String))

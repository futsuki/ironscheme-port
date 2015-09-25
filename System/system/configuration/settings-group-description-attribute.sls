(library (system configuration settings-group-description-attribute)
  (export new is? settings-group-description-attribute? description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsGroupDescriptionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsGroupDescriptionAttribute a))
  (define (settings-group-description-attribute? a)
    (clr-is System.Configuration.SettingsGroupDescriptionAttribute a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Configuration.SettingsGroupDescriptionAttribute
    Description
    System.String))

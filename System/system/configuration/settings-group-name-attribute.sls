(library (system configuration settings-group-name-attribute)
  (export new is? settings-group-name-attribute? group-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsGroupNameAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsGroupNameAttribute a))
  (define (settings-group-name-attribute? a)
    (clr-is System.Configuration.SettingsGroupNameAttribute a))
  (define-field-port
    group-name
    #f
    #f
    (property:)
    System.Configuration.SettingsGroupNameAttribute
    GroupName
    System.String))

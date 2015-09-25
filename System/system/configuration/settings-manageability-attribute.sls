(library (system configuration settings-manageability-attribute)
  (export new is? settings-manageability-attribute? manageability)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsManageabilityAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsManageabilityAttribute a))
  (define (settings-manageability-attribute? a)
    (clr-is System.Configuration.SettingsManageabilityAttribute a))
  (define-field-port
    manageability
    #f
    #f
    (property:)
    System.Configuration.SettingsManageabilityAttribute
    Manageability
    System.Configuration.SettingsManageability))

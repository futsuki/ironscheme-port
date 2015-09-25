(library (system configuration no-settings-version-upgrade-attribute)
  (export new is? no-settings-version-upgrade-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.NoSettingsVersionUpgradeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.NoSettingsVersionUpgradeAttribute a))
  (define (no-settings-version-upgrade-attribute? a)
    (clr-is System.Configuration.NoSettingsVersionUpgradeAttribute a)))

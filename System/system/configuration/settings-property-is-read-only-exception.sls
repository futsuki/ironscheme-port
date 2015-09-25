(library (system configuration settings-property-is-read-only-exception)
  (export new is? settings-property-is-read-only-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsPropertyIsReadOnlyException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsPropertyIsReadOnlyException a))
  (define (settings-property-is-read-only-exception? a)
    (clr-is
      System.Configuration.SettingsPropertyIsReadOnlyException
      a)))

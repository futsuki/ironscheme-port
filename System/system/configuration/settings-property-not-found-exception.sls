(library (system configuration settings-property-not-found-exception)
  (export new is? settings-property-not-found-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsPropertyNotFoundException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsPropertyNotFoundException a))
  (define (settings-property-not-found-exception? a)
    (clr-is System.Configuration.SettingsPropertyNotFoundException a)))

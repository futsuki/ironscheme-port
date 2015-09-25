(library (system configuration app-settings-reader)
  (export new is? app-settings-reader? get-value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.AppSettingsReader a ...)))))
  (define (is? a) (clr-is System.Configuration.AppSettingsReader a))
  (define (app-settings-reader? a)
    (clr-is System.Configuration.AppSettingsReader a))
  (define-method-port
    get-value
    System.Configuration.AppSettingsReader
    GetValue
    (System.Object System.String System.Type)))

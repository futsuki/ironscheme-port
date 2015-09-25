(library (system configuration settings-loaded-event-args)
  (export new is? settings-loaded-event-args? provider)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsLoadedEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsLoadedEventArgs a))
  (define (settings-loaded-event-args? a)
    (clr-is System.Configuration.SettingsLoadedEventArgs a))
  (define-field-port
    provider
    #f
    #f
    (property:)
    System.Configuration.SettingsLoadedEventArgs
    Provider
    System.Configuration.SettingsProvider))

(library (system configuration application-settings-group)
  (export new is? application-settings-group?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ApplicationSettingsGroup
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ApplicationSettingsGroup a))
  (define (application-settings-group? a)
    (clr-is System.Configuration.ApplicationSettingsGroup a)))

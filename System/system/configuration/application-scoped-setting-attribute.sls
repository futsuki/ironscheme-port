(library (system configuration application-scoped-setting-attribute)
  (export new is? application-scoped-setting-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ApplicationScopedSettingAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ApplicationScopedSettingAttribute a))
  (define (application-scoped-setting-attribute? a)
    (clr-is System.Configuration.ApplicationScopedSettingAttribute a)))

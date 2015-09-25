(library (system configuration user-scoped-setting-attribute)
  (export new is? user-scoped-setting-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.UserScopedSettingAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.UserScopedSettingAttribute a))
  (define (user-scoped-setting-attribute? a)
    (clr-is System.Configuration.UserScopedSettingAttribute a)))

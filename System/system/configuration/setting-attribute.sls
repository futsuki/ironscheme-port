(library (system configuration setting-attribute)
  (export new is? setting-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.SettingAttribute a ...)))))
  (define (is? a) (clr-is System.Configuration.SettingAttribute a))
  (define (setting-attribute? a)
    (clr-is System.Configuration.SettingAttribute a)))

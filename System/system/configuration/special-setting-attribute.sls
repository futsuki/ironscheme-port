(library (system configuration special-setting-attribute)
  (export new is? special-setting-attribute? special-setting)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SpecialSettingAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SpecialSettingAttribute a))
  (define (special-setting-attribute? a)
    (clr-is System.Configuration.SpecialSettingAttribute a))
  (define-field-port
    special-setting
    #f
    #f
    (property:)
    System.Configuration.SpecialSettingAttribute
    SpecialSetting
    System.Configuration.SpecialSetting))

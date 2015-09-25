(library (system configuration settings-property-wrong-type-exception)
  (export new is? settings-property-wrong-type-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsPropertyWrongTypeException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsPropertyWrongTypeException a))
  (define (settings-property-wrong-type-exception? a)
    (clr-is System.Configuration.SettingsPropertyWrongTypeException a)))

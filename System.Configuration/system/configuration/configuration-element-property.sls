(library (system configuration configuration-element-property)
  (export new is? configuration-element-property? validator)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationElementProperty
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationElementProperty a))
  (define (configuration-element-property? a)
    (clr-is System.Configuration.ConfigurationElementProperty a))
  (define-field-port
    validator
    #f
    #f
    (property:)
    System.Configuration.ConfigurationElementProperty
    Validator
    System.Configuration.ConfigurationValidatorBase))

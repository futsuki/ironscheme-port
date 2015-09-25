(library (system configuration subclass-type-validator-attribute)
  (export new
          is?
          subclass-type-validator-attribute?
          base-class
          validator-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SubclassTypeValidatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SubclassTypeValidatorAttribute a))
  (define (subclass-type-validator-attribute? a)
    (clr-is System.Configuration.SubclassTypeValidatorAttribute a))
  (define-field-port
    base-class
    #f
    #f
    (property:)
    System.Configuration.SubclassTypeValidatorAttribute
    BaseClass
    System.Type)
  (define-field-port
    validator-instance
    #f
    #f
    (property:)
    System.Configuration.SubclassTypeValidatorAttribute
    ValidatorInstance
    System.Configuration.ConfigurationValidatorBase))

(library (system configuration callback-validator-attribute)
  (export new
          is?
          callback-validator-attribute?
          callback-method-name-get
          callback-method-name-set!
          callback-method-name-update!
          type-get
          type-set!
          type-update!
          validator-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.CallbackValidatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.CallbackValidatorAttribute a))
  (define (callback-validator-attribute? a)
    (clr-is System.Configuration.CallbackValidatorAttribute a))
  (define-field-port
    callback-method-name-get
    callback-method-name-set!
    callback-method-name-update!
    (property:)
    System.Configuration.CallbackValidatorAttribute
    CallbackMethodName
    System.String)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Configuration.CallbackValidatorAttribute
    Type
    System.Type)
  (define-field-port
    validator-instance
    #f
    #f
    (property:)
    System.Configuration.CallbackValidatorAttribute
    ValidatorInstance
    System.Configuration.ConfigurationValidatorBase))

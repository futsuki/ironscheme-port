(library (system configuration string-validator-attribute)
  (export new
          is?
          string-validator-attribute?
          invalid-characters-get
          invalid-characters-set!
          invalid-characters-update!
          max-length-get
          max-length-set!
          max-length-update!
          min-length-get
          min-length-set!
          min-length-update!
          validator-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.StringValidatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.StringValidatorAttribute a))
  (define (string-validator-attribute? a)
    (clr-is System.Configuration.StringValidatorAttribute a))
  (define-field-port
    invalid-characters-get
    invalid-characters-set!
    invalid-characters-update!
    (property:)
    System.Configuration.StringValidatorAttribute
    InvalidCharacters
    System.String)
  (define-field-port
    max-length-get
    max-length-set!
    max-length-update!
    (property:)
    System.Configuration.StringValidatorAttribute
    MaxLength
    System.Int32)
  (define-field-port
    min-length-get
    min-length-set!
    min-length-update!
    (property:)
    System.Configuration.StringValidatorAttribute
    MinLength
    System.Int32)
  (define-field-port
    validator-instance
    #f
    #f
    (property:)
    System.Configuration.StringValidatorAttribute
    ValidatorInstance
    System.Configuration.ConfigurationValidatorBase))

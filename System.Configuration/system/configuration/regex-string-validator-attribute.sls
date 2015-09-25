(library (system configuration regex-string-validator-attribute)
  (export new
          is?
          regex-string-validator-attribute?
          regex
          validator-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.RegexStringValidatorAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.RegexStringValidatorAttribute a))
  (define (regex-string-validator-attribute? a)
    (clr-is System.Configuration.RegexStringValidatorAttribute a))
  (define-field-port
    regex
    #f
    #f
    (property:)
    System.Configuration.RegexStringValidatorAttribute
    Regex
    System.String)
  (define-field-port
    validator-instance
    #f
    #f
    (property:)
    System.Configuration.RegexStringValidatorAttribute
    ValidatorInstance
    System.Configuration.ConfigurationValidatorBase))

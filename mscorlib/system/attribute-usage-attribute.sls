(library (system attribute-usage-attribute)
  (export new
          is?
          attribute-usage-attribute?
          allow-multiple?-get
          allow-multiple?-set!
          allow-multiple?-update!
          inherited?-get
          inherited?-set!
          inherited?-update!
          valid-on)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.AttributeUsageAttribute a ...)))))
  (define (is? a) (clr-is System.AttributeUsageAttribute a))
  (define (attribute-usage-attribute? a)
    (clr-is System.AttributeUsageAttribute a))
  (define-field-port
    allow-multiple?-get
    allow-multiple?-set!
    allow-multiple?-update!
    (property:)
    System.AttributeUsageAttribute
    AllowMultiple
    System.Boolean)
  (define-field-port
    inherited?-get
    inherited?-set!
    inherited?-update!
    (property:)
    System.AttributeUsageAttribute
    Inherited
    System.Boolean)
  (define-field-port
    valid-on
    #f
    #f
    (property:)
    System.AttributeUsageAttribute
    ValidOn
    System.AttributeTargets))

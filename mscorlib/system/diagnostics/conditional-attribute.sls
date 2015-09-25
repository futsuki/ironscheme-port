(library (system diagnostics conditional-attribute)
  (export new is? conditional-attribute? condition-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.ConditionalAttribute a ...)))))
  (define (is? a) (clr-is System.Diagnostics.ConditionalAttribute a))
  (define (conditional-attribute? a)
    (clr-is System.Diagnostics.ConditionalAttribute a))
  (define-field-port
    condition-string
    #f
    #f
    (property:)
    System.Diagnostics.ConditionalAttribute
    ConditionString
    System.String))

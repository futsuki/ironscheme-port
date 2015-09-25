(library (jet-brains annotations localization-required-attribute)
  (export new is? localization-required-attribute? required?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.LocalizationRequiredAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.LocalizationRequiredAttribute a))
  (define (localization-required-attribute? a)
    (clr-is JetBrains.Annotations.LocalizationRequiredAttribute a))
  (define-field-port
    required?
    #f
    #f
    (property:)
    JetBrains.Annotations.LocalizationRequiredAttribute
    Required
    System.Boolean))

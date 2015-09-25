(library (jet-brains annotations base-type-required-attribute)
  (export new is? base-type-required-attribute? base-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             JetBrains.Annotations.BaseTypeRequiredAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is JetBrains.Annotations.BaseTypeRequiredAttribute a))
  (define (base-type-required-attribute? a)
    (clr-is JetBrains.Annotations.BaseTypeRequiredAttribute a))
  (define-field-port
    base-type
    #f
    #f
    (property:)
    JetBrains.Annotations.BaseTypeRequiredAttribute
    BaseType
    System.Type))

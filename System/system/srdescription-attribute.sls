(library (system srdescription-attribute)
  (export new is? srdescription-attribute? description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.SRDescriptionAttribute a ...)))))
  (define (is? a) (clr-is System.SRDescriptionAttribute a))
  (define (srdescription-attribute? a)
    (clr-is System.SRDescriptionAttribute a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.SRDescriptionAttribute
    Description
    System.String))

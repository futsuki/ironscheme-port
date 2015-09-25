(library (system data res-description-attribute)
  (export new is? res-description-attribute? description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.ResDescriptionAttribute a ...)))))
  (define (is? a) (clr-is System.Data.ResDescriptionAttribute a))
  (define (res-description-attribute? a)
    (clr-is System.Data.ResDescriptionAttribute a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Data.ResDescriptionAttribute
    Description
    System.String))

(library (system data data-sys-description-attribute)
  (export new is? data-sys-description-attribute? description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.DataSysDescriptionAttribute a ...)))))
  (define (is? a) (clr-is System.Data.DataSysDescriptionAttribute a))
  (define (data-sys-description-attribute? a)
    (clr-is System.Data.DataSysDescriptionAttribute a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Data.DataSysDescriptionAttribute
    Description
    System.String))

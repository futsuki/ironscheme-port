(library (system io iodescription-attribute)
  (export new is? iodescription-attribute? description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.IODescriptionAttribute a ...)))))
  (define (is? a) (clr-is System.IO.IODescriptionAttribute a))
  (define (iodescription-attribute? a)
    (clr-is System.IO.IODescriptionAttribute a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.IO.IODescriptionAttribute
    Description
    System.String))

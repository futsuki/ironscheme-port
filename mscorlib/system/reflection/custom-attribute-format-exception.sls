(library (system reflection custom-attribute-format-exception)
  (export new is? custom-attribute-format-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.CustomAttributeFormatException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.CustomAttributeFormatException a))
  (define (custom-attribute-format-exception? a)
    (clr-is System.Reflection.CustomAttributeFormatException a)))

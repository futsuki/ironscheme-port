(library (system reflection assembly-culture-attribute)
  (export new is? assembly-culture-attribute? culture)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyCultureAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Reflection.AssemblyCultureAttribute a))
  (define (assembly-culture-attribute? a)
    (clr-is System.Reflection.AssemblyCultureAttribute a))
  (define-field-port
    culture
    #f
    #f
    (property:)
    System.Reflection.AssemblyCultureAttribute
    Culture
    System.String))

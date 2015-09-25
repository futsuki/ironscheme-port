(library (system reflection assembly-description-attribute)
  (export new is? assembly-description-attribute? description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyDescriptionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.AssemblyDescriptionAttribute a))
  (define (assembly-description-attribute? a)
    (clr-is System.Reflection.AssemblyDescriptionAttribute a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Reflection.AssemblyDescriptionAttribute
    Description
    System.String))

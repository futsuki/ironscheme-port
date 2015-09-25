(library (system reflection assembly-title-attribute)
  (export new is? assembly-title-attribute? title)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Reflection.AssemblyTitleAttribute a ...)))))
  (define (is? a) (clr-is System.Reflection.AssemblyTitleAttribute a))
  (define (assembly-title-attribute? a)
    (clr-is System.Reflection.AssemblyTitleAttribute a))
  (define-field-port
    title
    #f
    #f
    (property:)
    System.Reflection.AssemblyTitleAttribute
    Title
    System.String))

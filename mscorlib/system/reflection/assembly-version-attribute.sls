(library (system reflection assembly-version-attribute)
  (export new is? assembly-version-attribute? version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyVersionAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Reflection.AssemblyVersionAttribute a))
  (define (assembly-version-attribute? a)
    (clr-is System.Reflection.AssemblyVersionAttribute a))
  (define-field-port
    version
    #f
    #f
    (property:)
    System.Reflection.AssemblyVersionAttribute
    Version
    System.String))

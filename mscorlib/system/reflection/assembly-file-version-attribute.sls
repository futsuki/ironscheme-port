(library (system reflection assembly-file-version-attribute)
  (export new is? assembly-file-version-attribute? version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyFileVersionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.AssemblyFileVersionAttribute a))
  (define (assembly-file-version-attribute? a)
    (clr-is System.Reflection.AssemblyFileVersionAttribute a))
  (define-field-port
    version
    #f
    #f
    (property:)
    System.Reflection.AssemblyFileVersionAttribute
    Version
    System.String))

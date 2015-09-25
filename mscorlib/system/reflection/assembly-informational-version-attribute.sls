(library (system reflection assembly-informational-version-attribute)
  (export new
          is?
          assembly-informational-version-attribute?
          informational-version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyInformationalVersionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.AssemblyInformationalVersionAttribute a))
  (define (assembly-informational-version-attribute? a)
    (clr-is System.Reflection.AssemblyInformationalVersionAttribute a))
  (define-field-port
    informational-version
    #f
    #f
    (property:)
    System.Reflection.AssemblyInformationalVersionAttribute
    InformationalVersion
    System.String))

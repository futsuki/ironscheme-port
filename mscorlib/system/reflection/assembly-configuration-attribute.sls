(library (system reflection assembly-configuration-attribute)
  (export new is? assembly-configuration-attribute? configuration)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyConfigurationAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.AssemblyConfigurationAttribute a))
  (define (assembly-configuration-attribute? a)
    (clr-is System.Reflection.AssemblyConfigurationAttribute a))
  (define-field-port
    configuration
    #f
    #f
    (property:)
    System.Reflection.AssemblyConfigurationAttribute
    Configuration
    System.String))

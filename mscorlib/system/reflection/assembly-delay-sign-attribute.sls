(library (system reflection assembly-delay-sign-attribute)
  (export new is? assembly-delay-sign-attribute? delay-sign?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyDelaySignAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.AssemblyDelaySignAttribute a))
  (define (assembly-delay-sign-attribute? a)
    (clr-is System.Reflection.AssemblyDelaySignAttribute a))
  (define-field-port
    delay-sign?
    #f
    #f
    (property:)
    System.Reflection.AssemblyDelaySignAttribute
    DelaySign
    System.Boolean))

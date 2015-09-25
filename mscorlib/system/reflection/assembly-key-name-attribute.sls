(library (system reflection assembly-key-name-attribute)
  (export new is? assembly-key-name-attribute? key-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyKeyNameAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Reflection.AssemblyKeyNameAttribute a))
  (define (assembly-key-name-attribute? a)
    (clr-is System.Reflection.AssemblyKeyNameAttribute a))
  (define-field-port
    key-name
    #f
    #f
    (property:)
    System.Reflection.AssemblyKeyNameAttribute
    KeyName
    System.String))

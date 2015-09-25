(library (system reflection assembly-key-file-attribute)
  (export new is? assembly-key-file-attribute? key-file)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyKeyFileAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Reflection.AssemblyKeyFileAttribute a))
  (define (assembly-key-file-attribute? a)
    (clr-is System.Reflection.AssemblyKeyFileAttribute a))
  (define-field-port
    key-file
    #f
    #f
    (property:)
    System.Reflection.AssemblyKeyFileAttribute
    KeyFile
    System.String))

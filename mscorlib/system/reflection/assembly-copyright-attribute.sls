(library (system reflection assembly-copyright-attribute)
  (export new is? assembly-copyright-attribute? copyright)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyCopyrightAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.AssemblyCopyrightAttribute a))
  (define (assembly-copyright-attribute? a)
    (clr-is System.Reflection.AssemblyCopyrightAttribute a))
  (define-field-port
    copyright
    #f
    #f
    (property:)
    System.Reflection.AssemblyCopyrightAttribute
    Copyright
    System.String))

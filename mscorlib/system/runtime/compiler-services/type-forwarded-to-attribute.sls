(library (system runtime compiler-services type-forwarded-to-attribute)
  (export new is? type-forwarded-to-attribute? destination)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.TypeForwardedToAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.TypeForwardedToAttribute a))
  (define (type-forwarded-to-attribute? a)
    (clr-is System.Runtime.CompilerServices.TypeForwardedToAttribute a))
  (define-field-port
    destination
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.TypeForwardedToAttribute
    Destination
    System.Type))

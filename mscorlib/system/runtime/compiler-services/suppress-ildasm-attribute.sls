(library (system runtime compiler-services suppress-ildasm-attribute)
  (export new is? suppress-ildasm-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.SuppressIldasmAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.SuppressIldasmAttribute a))
  (define (suppress-ildasm-attribute? a)
    (clr-is System.Runtime.CompilerServices.SuppressIldasmAttribute a)))

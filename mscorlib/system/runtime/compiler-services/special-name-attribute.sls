(library (system runtime compiler-services special-name-attribute)
  (export new is? special-name-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.SpecialNameAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.SpecialNameAttribute a))
  (define (special-name-attribute? a)
    (clr-is System.Runtime.CompilerServices.SpecialNameAttribute a)))

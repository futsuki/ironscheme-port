(library (system runtime compiler-services compiler-generated-attribute)
  (export new is? compiler-generated-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.CompilerGeneratedAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.CompilerGeneratedAttribute
      a))
  (define (compiler-generated-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.CompilerGeneratedAttribute
      a)))

(library (system runtime compiler-services string-freezing-attribute)
  (export new is? string-freezing-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.StringFreezingAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.StringFreezingAttribute a))
  (define (string-freezing-attribute? a)
    (clr-is System.Runtime.CompilerServices.StringFreezingAttribute a)))

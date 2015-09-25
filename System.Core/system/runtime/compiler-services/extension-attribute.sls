(library (system runtime compiler-services extension-attribute)
  (export new is? extension-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.ExtensionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.ExtensionAttribute a))
  (define (extension-attribute? a)
    (clr-is System.Runtime.CompilerServices.ExtensionAttribute a)))

(library (system mono-extension-attribute)
  (export new is? mono-extension-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MonoExtensionAttribute a ...)))))
  (define (is? a) (clr-is System.MonoExtensionAttribute a))
  (define (mono-extension-attribute? a)
    (clr-is System.MonoExtensionAttribute a)))

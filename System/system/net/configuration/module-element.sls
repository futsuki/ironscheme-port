(library (system net configuration module-element)
  (export new is? module-element? type-get type-set! type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Configuration.ModuleElement a ...)))))
  (define (is? a) (clr-is System.Net.Configuration.ModuleElement a))
  (define (module-element? a)
    (clr-is System.Net.Configuration.ModuleElement a))
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Net.Configuration.ModuleElement
    Type
    System.String))

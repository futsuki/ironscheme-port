(library (system net configuration authentication-module-element)
  (export new
          is?
          authentication-module-element?
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.AuthenticationModuleElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.AuthenticationModuleElement a))
  (define (authentication-module-element? a)
    (clr-is System.Net.Configuration.AuthenticationModuleElement a))
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Net.Configuration.AuthenticationModuleElement
    Type
    System.String))

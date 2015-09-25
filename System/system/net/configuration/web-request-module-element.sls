(library (system net configuration web-request-module-element)
  (export new
          is?
          web-request-module-element?
          prefix-get
          prefix-set!
          prefix-update!
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.WebRequestModuleElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.WebRequestModuleElement a))
  (define (web-request-module-element? a)
    (clr-is System.Net.Configuration.WebRequestModuleElement a))
  (define-field-port
    prefix-get
    prefix-set!
    prefix-update!
    (property:)
    System.Net.Configuration.WebRequestModuleElement
    Prefix
    System.String)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Net.Configuration.WebRequestModuleElement
    Type
    System.Type))

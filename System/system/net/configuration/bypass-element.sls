(library (system net configuration bypass-element)
  (export new
          is?
          bypass-element?
          address-get
          address-set!
          address-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Configuration.BypassElement a ...)))))
  (define (is? a) (clr-is System.Net.Configuration.BypassElement a))
  (define (bypass-element? a)
    (clr-is System.Net.Configuration.BypassElement a))
  (define-field-port
    address-get
    address-set!
    address-update!
    (property:)
    System.Net.Configuration.BypassElement
    Address
    System.String))

(library (system configuration iri-parsing-element)
  (export new
          is?
          iri-parsing-element?
          get-hash-code
          equals?
          enabled?-get
          enabled?-set!
          enabled?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.IriParsingElement a ...)))))
  (define (is? a) (clr-is System.Configuration.IriParsingElement a))
  (define (iri-parsing-element? a)
    (clr-is System.Configuration.IriParsingElement a))
  (define-method-port
    get-hash-code
    System.Configuration.IriParsingElement
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Configuration.IriParsingElement
    Equals
    (System.Boolean System.Object))
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.Configuration.IriParsingElement
    Enabled
    System.Boolean))

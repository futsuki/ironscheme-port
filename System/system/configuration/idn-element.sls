(library (system configuration idn-element)
  (export new
          is?
          idn-element?
          get-hash-code
          equals?
          enabled-get
          enabled-set!
          enabled-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Configuration.IdnElement a ...)))))
  (define (is? a) (clr-is System.Configuration.IdnElement a))
  (define (idn-element? a) (clr-is System.Configuration.IdnElement a))
  (define-method-port
    get-hash-code
    System.Configuration.IdnElement
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Configuration.IdnElement
    Equals
    (System.Boolean System.Object))
  (define-field-port
    enabled-get
    enabled-set!
    enabled-update!
    (property:)
    System.Configuration.IdnElement
    Enabled
    System.UriIdnScope))

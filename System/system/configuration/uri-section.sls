(library (system configuration uri-section)
  (export new is? uri-section? idn iri-parsing)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Configuration.UriSection a ...)))))
  (define (is? a) (clr-is System.Configuration.UriSection a))
  (define (uri-section? a) (clr-is System.Configuration.UriSection a))
  (define-field-port
    idn
    #f
    #f
    (property:)
    System.Configuration.UriSection
    Idn
    System.Configuration.IdnElement)
  (define-field-port
    iri-parsing
    #f
    #f
    (property:)
    System.Configuration.UriSection
    IriParsing
    System.Configuration.IriParsingElement))

(library (system xml linq xdeclaration)
  (export new
          is?
          xdeclaration?
          to-string
          encoding-get
          encoding-set!
          encoding-update!
          standalone-get
          standalone-set!
          standalone-update!
          version-get
          version-set!
          version-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Linq.XDeclaration a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XDeclaration a))
  (define (xdeclaration? a) (clr-is System.Xml.Linq.XDeclaration a))
  (define-method-port
    to-string
    System.Xml.Linq.XDeclaration
    ToString
    (System.String))
  (define-field-port
    encoding-get
    encoding-set!
    encoding-update!
    (property:)
    System.Xml.Linq.XDeclaration
    Encoding
    System.String)
  (define-field-port
    standalone-get
    standalone-set!
    standalone-update!
    (property:)
    System.Xml.Linq.XDeclaration
    Standalone
    System.String)
  (define-field-port
    version-get
    version-set!
    version-update!
    (property:)
    System.Xml.Linq.XDeclaration
    Version
    System.String))

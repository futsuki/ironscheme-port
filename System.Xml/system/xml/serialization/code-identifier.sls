(library (system xml serialization code-identifier)
  (export new is? code-identifier? make-valid make-camel make-pascal)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.CodeIdentifier a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.CodeIdentifier a))
  (define (code-identifier? a)
    (clr-is System.Xml.Serialization.CodeIdentifier a))
  (define-method-port
    make-valid
    System.Xml.Serialization.CodeIdentifier
    MakeValid
    (static: System.String System.String))
  (define-method-port
    make-camel
    System.Xml.Serialization.CodeIdentifier
    MakeCamel
    (static: System.String System.String))
  (define-method-port
    make-pascal
    System.Xml.Serialization.CodeIdentifier
    MakePascal
    (static: System.String System.String)))

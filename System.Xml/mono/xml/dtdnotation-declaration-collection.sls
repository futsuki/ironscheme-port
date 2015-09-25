(library (mono xml dtdnotation-declaration-collection)
  (export new is? dtdnotation-declaration-collection? add item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.DTDNotationDeclarationCollection a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDNotationDeclarationCollection a))
  (define (dtdnotation-declaration-collection? a)
    (clr-is Mono.Xml.DTDNotationDeclarationCollection a))
  (define-method-port
    add
    Mono.Xml.DTDNotationDeclarationCollection
    Add
    (System.Void System.String Mono.Xml.DTDNotationDeclaration))
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.DTDNotationDeclarationCollection
    Item
    Mono.Xml.DTDNotationDeclaration))

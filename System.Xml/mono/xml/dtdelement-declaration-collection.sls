(library (mono xml dtdelement-declaration-collection)
  (export new is? dtdelement-declaration-collection? get add item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.DTDElementDeclarationCollection a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDElementDeclarationCollection a))
  (define (dtdelement-declaration-collection? a)
    (clr-is Mono.Xml.DTDElementDeclarationCollection a))
  (define-method-port
    get
    Mono.Xml.DTDElementDeclarationCollection
    Get
    (Mono.Xml.DTDElementDeclaration System.String))
  (define-method-port
    add
    Mono.Xml.DTDElementDeclarationCollection
    Add
    (System.Void System.String Mono.Xml.DTDElementDeclaration))
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.DTDElementDeclarationCollection
    Item
    Mono.Xml.DTDElementDeclaration))

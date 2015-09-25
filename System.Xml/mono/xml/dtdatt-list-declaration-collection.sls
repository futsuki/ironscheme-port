(library (mono xml dtdatt-list-declaration-collection)
  (export new is? dtdatt-list-declaration-collection? add item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.DTDAttListDeclarationCollection a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDAttListDeclarationCollection a))
  (define (dtdatt-list-declaration-collection? a)
    (clr-is Mono.Xml.DTDAttListDeclarationCollection a))
  (define-method-port
    add
    Mono.Xml.DTDAttListDeclarationCollection
    Add
    (System.Void System.String Mono.Xml.DTDAttListDeclaration))
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.DTDAttListDeclarationCollection
    Item
    Mono.Xml.DTDAttListDeclaration))

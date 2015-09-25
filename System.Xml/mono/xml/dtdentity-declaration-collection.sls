(library (mono xml dtdentity-declaration-collection)
  (export new is? dtdentity-declaration-collection? add item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.DTDEntityDeclarationCollection a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDEntityDeclarationCollection a))
  (define (dtdentity-declaration-collection? a)
    (clr-is Mono.Xml.DTDEntityDeclarationCollection a))
  (define-method-port
    add
    Mono.Xml.DTDEntityDeclarationCollection
    Add
    (System.Void System.String Mono.Xml.DTDEntityDeclaration))
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.DTDEntityDeclarationCollection
    Item
    Mono.Xml.DTDEntityDeclaration))

(library (mono xml dtdparameter-entity-declaration-collection)
  (export new
          is?
          dtdparameter-entity-declaration-collection?
          add
          item
          keys
          values)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.DTDParameterEntityDeclarationCollection
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Xml.DTDParameterEntityDeclarationCollection a))
  (define (dtdparameter-entity-declaration-collection? a)
    (clr-is Mono.Xml.DTDParameterEntityDeclarationCollection a))
  (define-method-port
    add
    Mono.Xml.DTDParameterEntityDeclarationCollection
    Add
    (System.Void System.String Mono.Xml.DTDParameterEntityDeclaration))
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.DTDParameterEntityDeclarationCollection
    Item
    Mono.Xml.DTDParameterEntityDeclaration)
  (define-field-port
    keys
    #f
    #f
    (property:)
    Mono.Xml.DTDParameterEntityDeclarationCollection
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    Mono.Xml.DTDParameterEntityDeclarationCollection
    Values
    System.Collections.ICollection))

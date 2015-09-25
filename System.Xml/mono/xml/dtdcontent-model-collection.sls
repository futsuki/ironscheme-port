(library (mono xml dtdcontent-model-collection)
  (export new is? dtdcontent-model-collection? add items item count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.DTDContentModelCollection a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDContentModelCollection a))
  (define (dtdcontent-model-collection? a)
    (clr-is Mono.Xml.DTDContentModelCollection a))
  (define-method-port
    add
    Mono.Xml.DTDContentModelCollection
    Add
    (System.Void Mono.Xml.DTDContentModel))
  (define-field-port
    items
    #f
    #f
    (property:)
    Mono.Xml.DTDContentModelCollection
    Items
    System.Collections.IList)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.DTDContentModelCollection
    Item
    Mono.Xml.DTDContentModel)
  (define-field-port
    count
    #f
    #f
    (property:)
    Mono.Xml.DTDContentModelCollection
    Count
    System.Int32))

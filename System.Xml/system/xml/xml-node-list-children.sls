(library (system xml xml-node-list-children)
  (export new is? xml-node-list-children? item get-enumerator count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlNodeListChildren a ...)))))
  (define (is? a) (clr-is System.Xml.XmlNodeListChildren a))
  (define (xml-node-list-children? a)
    (clr-is System.Xml.XmlNodeListChildren a))
  (define-method-port
    item
    System.Xml.XmlNodeListChildren
    Item
    (System.Xml.XmlNode System.Int32))
  (define-method-port
    get-enumerator
    System.Xml.XmlNodeListChildren
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XmlNodeListChildren
    Count
    System.Int32))

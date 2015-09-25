(library (system xml xml-iterator-node-list)
  (export new is? xml-iterator-node-list? item get-enumerator count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlIteratorNodeList a ...)))))
  (define (is? a) (clr-is System.Xml.XmlIteratorNodeList a))
  (define (xml-iterator-node-list? a)
    (clr-is System.Xml.XmlIteratorNodeList a))
  (define-method-port
    item
    System.Xml.XmlIteratorNodeList
    Item
    (System.Xml.XmlNode System.Int32))
  (define-method-port
    get-enumerator
    System.Xml.XmlIteratorNodeList
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XmlIteratorNodeList
    Count
    System.Int32))

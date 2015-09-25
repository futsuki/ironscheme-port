(library (system xml xml-node-array-list)
  (export new is? xml-node-array-list? item get-enumerator count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlNodeArrayList a ...)))))
  (define (is? a) (clr-is System.Xml.XmlNodeArrayList a))
  (define (xml-node-array-list? a)
    (clr-is System.Xml.XmlNodeArrayList a))
  (define-method-port
    item
    System.Xml.XmlNodeArrayList
    Item
    (System.Xml.XmlNode System.Int32))
  (define-method-port
    get-enumerator
    System.Xml.XmlNodeArrayList
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.XmlNodeArrayList
    Count
    System.Int32))

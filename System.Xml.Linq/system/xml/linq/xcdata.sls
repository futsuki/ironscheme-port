(library (system xml linq xcdata)
  (export new is? xcdata? write-to node-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Linq.XCData a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XCData a))
  (define (xcdata? a) (clr-is System.Xml.Linq.XCData a))
  (define-method-port
    write-to
    System.Xml.Linq.XCData
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Linq.XCData
    NodeType
    System.Xml.XmlNodeType))

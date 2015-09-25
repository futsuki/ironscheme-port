(library (mono xml xpath dtmxpath-document-builder2)
  (export new
          is?
          dtmxpath-document-builder2?
          read
          add-node
          compile
          add-ns-node
          create-document
          add-attribute)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.XPath.DTMXPathDocumentBuilder2 a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.DTMXPathDocumentBuilder2 a))
  (define (dtmxpath-document-builder2? a)
    (clr-is Mono.Xml.XPath.DTMXPathDocumentBuilder2 a))
  (define-method-port
    read
    Mono.Xml.XPath.DTMXPathDocumentBuilder2
    Read
    (System.Void))
  (define-method-port
    add-node
    Mono.Xml.XPath.DTMXPathDocumentBuilder2
    AddNode
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Xml.XPath.XPathNodeType
      System.Int32
      System.Boolean
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    compile
    Mono.Xml.XPath.DTMXPathDocumentBuilder2
    Compile
    (System.Void))
  (define-method-port
    add-ns-node
    Mono.Xml.XPath.DTMXPathDocumentBuilder2
    AddNsNode
    (System.Void System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    create-document
    Mono.Xml.XPath.DTMXPathDocumentBuilder2
    CreateDocument
    (Mono.Xml.XPath.DTMXPathDocument2))
  (define-method-port
    add-attribute
    Mono.Xml.XPath.DTMXPathDocumentBuilder2
    AddAttribute
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32)))

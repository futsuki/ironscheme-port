(library (mono xml xpath dtmxpath-document-builder)
  (export new
          is?
          dtmxpath-document-builder?
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
         #'(clr-new Mono.Xml.XPath.DTMXPathDocumentBuilder a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.DTMXPathDocumentBuilder a))
  (define (dtmxpath-document-builder? a)
    (clr-is Mono.Xml.XPath.DTMXPathDocumentBuilder a))
  (define-method-port
    read
    Mono.Xml.XPath.DTMXPathDocumentBuilder
    Read
    (System.Void))
  (define-method-port
    add-node
    Mono.Xml.XPath.DTMXPathDocumentBuilder
    AddNode
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Xml.XPath.XPathNodeType
      System.String
      System.Boolean
      System.String
      System.String
      System.String
      System.String
      System.String
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    compile
    Mono.Xml.XPath.DTMXPathDocumentBuilder
    Compile
    (System.Void))
  (define-method-port
    add-ns-node
    Mono.Xml.XPath.DTMXPathDocumentBuilder
    AddNsNode
    (System.Void System.Int32 System.String System.String System.Int32))
  (define-method-port
    create-document
    Mono.Xml.XPath.DTMXPathDocumentBuilder
    CreateDocument
    (Mono.Xml.XPath.DTMXPathDocument))
  (define-method-port
    add-attribute
    Mono.Xml.XPath.DTMXPathDocumentBuilder
    AddAttribute
    (System.Void
      System.Int32
      System.String
      System.String
      System.String
      System.String
      System.Int32
      System.Int32)))

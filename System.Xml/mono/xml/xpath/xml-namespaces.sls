(library (mono xml xpath xml-namespaces)
  (export new is? xml-namespaces? xml xmlns index-xml index-xmlns)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.XPath.XmlNamespaces a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.XmlNamespaces a))
  (define (xml-namespaces? a) (clr-is Mono.Xml.XPath.XmlNamespaces a))
  (define-field-port
    xml
    #f
    #f
    (static:)
    Mono.Xml.XPath.XmlNamespaces
    XML
    System.String)
  (define-field-port
    xmlns
    #f
    #f
    (static:)
    Mono.Xml.XPath.XmlNamespaces
    XMLNS
    System.String)
  (define-field-port
    index-xml
    #f
    #f
    (static:)
    Mono.Xml.XPath.XmlNamespaces
    IndexXML
    System.Int32)
  (define-field-port
    index-xmlns
    #f
    #f
    (static:)
    Mono.Xml.XPath.XmlNamespaces
    IndexXMLNS
    System.Int32))

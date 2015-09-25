(library (mono xml xpath dtmxpath-document2)
  (export new is? dtmxpath-document2? create-navigator)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.XPath.DTMXPathDocument2 a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.DTMXPathDocument2 a))
  (define (dtmxpath-document2? a)
    (clr-is Mono.Xml.XPath.DTMXPathDocument2 a))
  (define-method-port
    create-navigator
    Mono.Xml.XPath.DTMXPathDocument2
    CreateNavigator
    (System.Xml.XPath.XPathNavigator)))

(library (mono xml xpath dtmxpath-document)
  (export new is? dtmxpath-document? create-navigator)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.XPath.DTMXPathDocument a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.DTMXPathDocument a))
  (define (dtmxpath-document? a)
    (clr-is Mono.Xml.XPath.DTMXPathDocument a))
  (define-method-port
    create-navigator
    Mono.Xml.XPath.DTMXPathDocument
    CreateNavigator
    (System.Xml.XPath.XPathNavigator)))

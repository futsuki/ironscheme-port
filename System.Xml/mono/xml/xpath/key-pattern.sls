(library (mono xml xpath key-pattern)
  (export new is? key-pattern? matches? default-priority)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.XPath.KeyPattern a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.KeyPattern a))
  (define (key-pattern? a) (clr-is Mono.Xml.XPath.KeyPattern a))
  (define-method-port
    matches?
    Mono.Xml.XPath.KeyPattern
    Matches
    (System.Boolean
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltContext))
  (define-field-port
    default-priority
    #f
    #f
    (property:)
    Mono.Xml.XPath.KeyPattern
    DefaultPriority
    System.Double))

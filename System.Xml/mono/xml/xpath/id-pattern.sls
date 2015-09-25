(library (mono xml xpath id-pattern)
  (export new
          is?
          id-pattern?
          matches?
          evaluated-node-type
          default-priority)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.XPath.IdPattern a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.IdPattern a))
  (define (id-pattern? a) (clr-is Mono.Xml.XPath.IdPattern a))
  (define-method-port
    matches?
    Mono.Xml.XPath.IdPattern
    Matches
    (System.Boolean
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltContext))
  (define-field-port
    evaluated-node-type
    #f
    #f
    (property:)
    Mono.Xml.XPath.IdPattern
    EvaluatedNodeType
    System.Xml.XPath.XPathNodeType)
  (define-field-port
    default-priority
    #f
    #f
    (property:)
    Mono.Xml.XPath.IdPattern
    DefaultPriority
    System.Double))

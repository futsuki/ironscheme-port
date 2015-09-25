(library (mono xml xpath pattern)
  (export is? pattern? matches? default-priority evaluated-node-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.XPath.Pattern a))
  (define (pattern? a) (clr-is Mono.Xml.XPath.Pattern a))
  (define-method-port
    matches?
    Mono.Xml.XPath.Pattern
    Matches
    (System.Boolean
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltContext))
  (define-field-port
    default-priority
    #f
    #f
    (property:)
    Mono.Xml.XPath.Pattern
    DefaultPriority
    System.Double)
  (define-field-port
    evaluated-node-type
    #f
    #f
    (property:)
    Mono.Xml.XPath.Pattern
    EvaluatedNodeType
    System.Xml.XPath.XPathNodeType))

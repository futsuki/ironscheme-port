(library (mono xml xpath location-path-pattern)
  (export new
          is?
          location-path-pattern?
          to-string
          matches?
          default-priority
          evaluated-node-type
          last-path-pattern)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.XPath.LocationPathPattern a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.LocationPathPattern a))
  (define (location-path-pattern? a)
    (clr-is Mono.Xml.XPath.LocationPathPattern a))
  (define-method-port
    to-string
    Mono.Xml.XPath.LocationPathPattern
    ToString
    (System.String))
  (define-method-port
    matches?
    Mono.Xml.XPath.LocationPathPattern
    Matches
    (System.Boolean
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltContext))
  (define-field-port
    default-priority
    #f
    #f
    (property:)
    Mono.Xml.XPath.LocationPathPattern
    DefaultPriority
    System.Double)
  (define-field-port
    evaluated-node-type
    #f
    #f
    (property:)
    Mono.Xml.XPath.LocationPathPattern
    EvaluatedNodeType
    System.Xml.XPath.XPathNodeType)
  (define-field-port
    last-path-pattern
    #f
    #f
    (property:)
    Mono.Xml.XPath.LocationPathPattern
    LastPathPattern
    Mono.Xml.XPath.LocationPathPattern))

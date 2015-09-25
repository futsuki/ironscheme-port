(library (mono xml xpath union-pattern)
  (export new
          is?
          union-pattern?
          to-string
          matches?
          p0
          p1
          evaluated-node-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.XPath.UnionPattern a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.UnionPattern a))
  (define (union-pattern? a) (clr-is Mono.Xml.XPath.UnionPattern a))
  (define-method-port
    to-string
    Mono.Xml.XPath.UnionPattern
    ToString
    (System.String))
  (define-method-port
    matches?
    Mono.Xml.XPath.UnionPattern
    Matches
    (System.Boolean
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltContext))
  (define-field-port
    p0
    #f
    #f
    ()
    Mono.Xml.XPath.UnionPattern
    p0
    Mono.Xml.XPath.Pattern)
  (define-field-port
    p1
    #f
    #f
    ()
    Mono.Xml.XPath.UnionPattern
    p1
    Mono.Xml.XPath.Pattern)
  (define-field-port
    evaluated-node-type
    #f
    #f
    (property:)
    Mono.Xml.XPath.UnionPattern
    EvaluatedNodeType
    System.Xml.XPath.XPathNodeType))

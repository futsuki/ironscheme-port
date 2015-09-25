(library (mono xml xsl key-index-table)
  (export new is? key-index-table? evaluate matches? keys)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.KeyIndexTable a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.KeyIndexTable a))
  (define (key-index-table? a) (clr-is Mono.Xml.Xsl.KeyIndexTable a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.KeyIndexTable
    Evaluate
    (System.Xml.XPath.BaseIterator
      System.Xml.XPath.BaseIterator
      System.Xml.XPath.Expression))
  (define-method-port
    matches?
    Mono.Xml.Xsl.KeyIndexTable
    Matches
    (System.Boolean
      System.Xml.XPath.XPathNavigator
      System.String
      System.Xml.Xsl.XsltContext))
  (define-field-port
    keys
    #f
    #f
    (property:)
    Mono.Xml.Xsl.KeyIndexTable
    Keys
    System.Collections.ArrayList))

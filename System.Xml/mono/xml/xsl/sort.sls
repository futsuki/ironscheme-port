(library (mono xml xsl sort)
  (export new
          is?
          sort?
          to-xpath-sorter
          add-to-expr
          is-context-dependent?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.Sort a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Sort a))
  (define (sort? a) (clr-is Mono.Xml.Xsl.Sort a))
  (define-method-port
    to-xpath-sorter
    Mono.Xml.Xsl.Sort
    ToXPathSorter
    (System.Xml.XPath.XPathSorter Mono.Xml.Xsl.XslTransformProcessor))
  (define-method-port
    add-to-expr
    Mono.Xml.Xsl.Sort
    AddToExpr
    (System.Void
      System.Xml.XPath.XPathExpression
      Mono.Xml.Xsl.XslTransformProcessor))
  (define-field-port
    is-context-dependent?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Sort
    IsContextDependent
    System.Boolean))

(library (system xml xpath axis-specifier)
  (export new is? axis-specifier? evaluate to-string node-type axis)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.AxisSpecifier a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.AxisSpecifier a))
  (define (axis-specifier? a) (clr-is System.Xml.XPath.AxisSpecifier a))
  (define-method-port
    evaluate
    System.Xml.XPath.AxisSpecifier
    Evaluate
    (System.Xml.XPath.BaseIterator System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.AxisSpecifier
    ToString
    (System.String))
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XPath.AxisSpecifier
    NodeType
    System.Xml.XPath.XPathNodeType)
  (define-field-port
    axis
    #f
    #f
    (property:)
    System.Xml.XPath.AxisSpecifier
    Axis
    System.Xml.XPath.Axes))

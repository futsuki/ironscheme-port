(library (system xml xpath axis-iterator)
  (export new
          is?
          axis-iterator?
          move-next-core?
          clone
          current
          reverse-axis?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.AxisIterator a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.AxisIterator a))
  (define (axis-iterator? a) (clr-is System.Xml.XPath.AxisIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.AxisIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    clone
    System.Xml.XPath.AxisIterator
    Clone
    (System.Xml.XPath.XPathNodeIterator))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.XPath.AxisIterator
    Current
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    reverse-axis?
    #f
    #f
    (property:)
    System.Xml.XPath.AxisIterator
    ReverseAxis
    System.Boolean))

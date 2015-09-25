(library (system xml xpath xpath-expression)
  (export is?
          xpath-expression?
          add-sort
          compile
          set-context
          clone
          expression
          return-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XPath.XPathExpression a))
  (define (xpath-expression? a)
    (clr-is System.Xml.XPath.XPathExpression a))
  (define-method-port
    add-sort
    System.Xml.XPath.XPathExpression
    AddSort
    (System.Void
      System.Object
      System.Xml.XPath.XmlSortOrder
      System.Xml.XPath.XmlCaseOrder
      System.String
      System.Xml.XPath.XmlDataType)
    (System.Void System.Object System.Collections.IComparer))
  (define-method-port
    compile
    System.Xml.XPath.XPathExpression
    Compile
    (static:
      System.Xml.XPath.XPathExpression
      System.String
      System.Xml.IXmlNamespaceResolver)
    (static: System.Xml.XPath.XPathExpression System.String))
  (define-method-port
    set-context
    System.Xml.XPath.XPathExpression
    SetContext
    (System.Void System.Xml.IXmlNamespaceResolver)
    (System.Void System.Xml.XmlNamespaceManager))
  (define-method-port
    clone
    System.Xml.XPath.XPathExpression
    Clone
    (System.Xml.XPath.XPathExpression))
  (define-field-port
    expression
    #f
    #f
    (property:)
    System.Xml.XPath.XPathExpression
    Expression
    System.String)
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathExpression
    ReturnType
    System.Xml.XPath.XPathResultType))

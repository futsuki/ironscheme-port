(library (system xml xpath compiled-expression)
  (export new
          is?
          compiled-expression?
          add-sort
          evaluate-node-set
          evaluate-number
          evaluate-string
          evaluate
          set-context
          clone
          evaluate-boolean?
          expression-node
          expression
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.CompiledExpression a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.CompiledExpression a))
  (define (compiled-expression? a)
    (clr-is System.Xml.XPath.CompiledExpression a))
  (define-method-port
    add-sort
    System.Xml.XPath.CompiledExpression
    AddSort
    (System.Void
      System.Object
      System.Xml.XPath.XmlSortOrder
      System.Xml.XPath.XmlCaseOrder
      System.String
      System.Xml.XPath.XmlDataType)
    (System.Void System.Object System.Collections.IComparer))
  (define-method-port
    evaluate-node-set
    System.Xml.XPath.CompiledExpression
    EvaluateNodeSet
    (System.Xml.XPath.XPathNodeIterator System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate-number
    System.Xml.XPath.CompiledExpression
    EvaluateNumber
    (System.Double System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate-string
    System.Xml.XPath.CompiledExpression
    EvaluateString
    (System.String System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate
    System.Xml.XPath.CompiledExpression
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    set-context
    System.Xml.XPath.CompiledExpression
    SetContext
    (System.Void System.Xml.IXmlNamespaceResolver)
    (System.Void System.Xml.XmlNamespaceManager))
  (define-method-port
    clone
    System.Xml.XPath.CompiledExpression
    Clone
    (System.Xml.XPath.XPathExpression))
  (define-method-port
    evaluate-boolean?
    System.Xml.XPath.CompiledExpression
    EvaluateBoolean
    (System.Boolean System.Xml.XPath.BaseIterator))
  (define-field-port
    expression-node
    #f
    #f
    (property:)
    System.Xml.XPath.CompiledExpression
    ExpressionNode
    System.Xml.XPath.Expression)
  (define-field-port
    expression
    #f
    #f
    (property:)
    System.Xml.XPath.CompiledExpression
    Expression
    System.String)
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.CompiledExpression
    ReturnType
    System.Xml.XPath.XPathResultType))

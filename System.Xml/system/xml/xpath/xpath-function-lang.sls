(library (system xml xpath xpath-function-lang)
  (export new
          is?
          xpath-function-lang?
          evaluate
          to-string
          evaluate-boolean?
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionLang a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionLang a))
  (define (xpath-function-lang? a)
    (clr-is System.Xml.XPath.XPathFunctionLang a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionLang
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionLang
    ToString
    (System.String))
  (define-method-port
    evaluate-boolean?
    System.Xml.XPath.XPathFunctionLang
    EvaluateBoolean
    (System.Boolean System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionLang
    ReturnType
    System.Xml.XPath.XPathResultType))

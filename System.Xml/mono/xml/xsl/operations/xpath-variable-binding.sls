(library (mono xml xsl operations xpath-variable-binding)
  (export new
          is?
          xpath-variable-binding?
          get-return-type
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Xsl.Operations.XPathVariableBinding
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Xml.Xsl.Operations.XPathVariableBinding a))
  (define (xpath-variable-binding? a)
    (clr-is Mono.Xml.Xsl.Operations.XPathVariableBinding a))
  (define-method-port
    get-return-type
    Mono.Xml.Xsl.Operations.XPathVariableBinding
    GetReturnType
    (System.Xml.XPath.XPathResultType System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XPathVariableBinding
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    Mono.Xml.Xsl.Operations.XPathVariableBinding
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XPathVariableBinding
    ReturnType
    System.Xml.XPath.XPathResultType))

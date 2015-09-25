(library (mono xml xsl xpfunc-impl)
  (export new
          is?
          xpfunc-impl?
          invoke
          get-xpath-type
          minargs
          maxargs
          return-type
          arg-types)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XPFuncImpl a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XPFuncImpl a))
  (define (xpfunc-impl? a) (clr-is Mono.Xml.Xsl.XPFuncImpl a))
  (define-method-port
    invoke
    Mono.Xml.Xsl.XPFuncImpl
    Invoke
    (System.Object
      Mono.Xml.Xsl.XsltCompiledContext
      System.Object[]
      System.Xml.XPath.XPathNavigator)
    (System.Object
      System.Xml.Xsl.XsltContext
      System.Object[]
      System.Xml.XPath.XPathNavigator))
  (define-method-port
    get-xpath-type
    Mono.Xml.Xsl.XPFuncImpl
    GetXPathType
    (static:
      System.Xml.XPath.XPathResultType
      System.Type
      System.Xml.XPath.XPathNavigator))
  (define-field-port
    minargs
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XPFuncImpl
    Minargs
    System.Int32)
  (define-field-port
    maxargs
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XPFuncImpl
    Maxargs
    System.Int32)
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XPFuncImpl
    ReturnType
    System.Xml.XPath.XPathResultType)
  (define-field-port
    arg-types
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XPFuncImpl
    ArgTypes
    System.Xml.XPath.XPathResultType[]))

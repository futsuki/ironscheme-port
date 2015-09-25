(library (mono xml xsl xslt-compiled-context)
  (export new
          is?
          xslt-compiled-context?
          compare-document
          matches-key?
          get-nav-cache
          resolve-variable
          lookup-namespace
          push-scope
          pop-scope?
          evaluate-key
          resolve-function
          preserve-whitespace?
          processor
          default-namespace
          whitespace?
          is-cdata?-get
          is-cdata?-set!
          is-cdata?-update!
          whitespace-handling?-get
          whitespace-handling?-set!
          whitespace-handling?-update!
          element-prefix-get
          element-prefix-set!
          element-prefix-update!
          element-namespace-get
          element-namespace-set!
          element-namespace-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.XsltCompiledContext a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltCompiledContext a))
  (define (xslt-compiled-context? a)
    (clr-is Mono.Xml.Xsl.XsltCompiledContext a))
  (define-method-port
    compare-document
    Mono.Xml.Xsl.XsltCompiledContext
    CompareDocument
    (System.Int32 System.String System.String))
  (define-method-port
    matches-key?
    Mono.Xml.Xsl.XsltCompiledContext
    MatchesKey
    (System.Boolean
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.IStaticXsltContext
      System.String
      System.String))
  (define-method-port
    get-nav-cache
    Mono.Xml.Xsl.XsltCompiledContext
    GetNavCache
    (System.Xml.XPath.XPathNavigator
      Mono.Xml.XPath.Pattern
      System.Xml.XPath.XPathNavigator))
  (define-method-port
    resolve-variable
    Mono.Xml.Xsl.XsltCompiledContext
    ResolveVariable
    (System.Xml.Xsl.IXsltContextVariable System.String System.String))
  (define-method-port
    lookup-namespace
    Mono.Xml.Xsl.XsltCompiledContext
    LookupNamespace
    (System.String System.String))
  (define-method-port
    push-scope
    Mono.Xml.Xsl.XsltCompiledContext
    PushScope
    (System.Void))
  (define-method-port
    pop-scope?
    Mono.Xml.Xsl.XsltCompiledContext
    PopScope
    (System.Boolean))
  (define-method-port
    evaluate-key
    Mono.Xml.Xsl.XsltCompiledContext
    EvaluateKey
    (System.Object
      System.Xml.Xsl.IStaticXsltContext
      System.Xml.XPath.BaseIterator
      System.Xml.XPath.Expression
      System.Xml.XPath.Expression))
  (define-method-port
    resolve-function
    Mono.Xml.Xsl.XsltCompiledContext
    ResolveFunction
    (System.Xml.Xsl.IXsltContextFunction
      System.String
      System.String
      System.Xml.XPath.XPathResultType[]))
  (define-method-port
    preserve-whitespace?
    Mono.Xml.Xsl.XsltCompiledContext
    PreserveWhitespace
    (System.Boolean System.Xml.XPath.XPathNavigator))
  (define-field-port
    processor
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltCompiledContext
    Processor
    Mono.Xml.Xsl.XslTransformProcessor)
  (define-field-port
    default-namespace
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltCompiledContext
    DefaultNamespace
    System.String)
  (define-field-port
    whitespace?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltCompiledContext
    Whitespace
    System.Boolean)
  (define-field-port
    is-cdata?-get
    is-cdata?-set!
    is-cdata?-update!
    (property:)
    Mono.Xml.Xsl.XsltCompiledContext
    IsCData
    System.Boolean)
  (define-field-port
    whitespace-handling?-get
    whitespace-handling?-set!
    whitespace-handling?-update!
    (property:)
    Mono.Xml.Xsl.XsltCompiledContext
    WhitespaceHandling
    System.Boolean)
  (define-field-port
    element-prefix-get
    element-prefix-set!
    element-prefix-update!
    (property:)
    Mono.Xml.Xsl.XsltCompiledContext
    ElementPrefix
    System.String)
  (define-field-port
    element-namespace-get
    element-namespace-set!
    element-namespace-update!
    (property:)
    Mono.Xml.Xsl.XsltCompiledContext
    ElementNamespace
    System.String))

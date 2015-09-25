(library (mono xml xsl operations xsl-compiled-element-base)
  (export new
          is?
          xsl-compiled-element-base?
          debug-input
          line-number
          line-position)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Xsl.Operations.XslCompiledElementBase
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Xml.Xsl.Operations.XslCompiledElementBase a))
  (define (xsl-compiled-element-base? a)
    (clr-is Mono.Xml.Xsl.Operations.XslCompiledElementBase a))
  (define-field-port
    debug-input
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslCompiledElementBase
    DebugInput
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslCompiledElementBase
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Operations.XslCompiledElementBase
    LinePosition
    System.Int32))

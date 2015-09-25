(library (mono xml xsl xslt-extension-function)
  (export new is? xslt-extension-function? invoke)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.XsltExtensionFunction a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltExtensionFunction a))
  (define (xslt-extension-function? a)
    (clr-is Mono.Xml.Xsl.XsltExtensionFunction a))
  (define-method-port
    invoke
    Mono.Xml.Xsl.XsltExtensionFunction
    Invoke
    (System.Object
      Mono.Xml.Xsl.XsltCompiledContext
      System.Object[]
      System.Xml.XPath.XPathNavigator)))

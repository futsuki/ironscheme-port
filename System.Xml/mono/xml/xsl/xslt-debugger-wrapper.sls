(library (mono xml xsl xslt-debugger-wrapper)
  (export new is? xslt-debugger-wrapper? debug-execute debug-compile)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.XsltDebuggerWrapper a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltDebuggerWrapper a))
  (define (xslt-debugger-wrapper? a)
    (clr-is Mono.Xml.Xsl.XsltDebuggerWrapper a))
  (define-method-port
    debug-execute
    Mono.Xml.Xsl.XsltDebuggerWrapper
    DebugExecute
    (System.Void
      Mono.Xml.Xsl.XslTransformProcessor
      System.Xml.XPath.XPathNavigator))
  (define-method-port
    debug-compile
    Mono.Xml.Xsl.XsltDebuggerWrapper
    DebugCompile
    (System.Void System.Xml.XPath.XPathNavigator)))

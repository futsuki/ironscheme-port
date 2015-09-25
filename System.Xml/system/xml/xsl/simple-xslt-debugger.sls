(library (system xml xsl simple-xslt-debugger)
  (export new is? simple-xslt-debugger? on-execute on-compile)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Xsl.SimpleXsltDebugger a ...)))))
  (define (is? a) (clr-is System.Xml.Xsl.SimpleXsltDebugger a))
  (define (simple-xslt-debugger? a)
    (clr-is System.Xml.Xsl.SimpleXsltDebugger a))
  (define-method-port
    on-execute
    System.Xml.Xsl.SimpleXsltDebugger
    OnExecute
    (System.Void
      System.Xml.XPath.XPathNodeIterator
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltContext))
  (define-method-port
    on-compile
    System.Xml.Xsl.SimpleXsltDebugger
    OnCompile
    (System.Void System.Xml.XPath.XPathNavigator)))

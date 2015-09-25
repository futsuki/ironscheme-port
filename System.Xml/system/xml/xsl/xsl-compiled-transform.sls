(library (system xml xsl xsl-compiled-transform)
  (export new
          is?
          xsl-compiled-transform?
          transform
          load
          output-settings
          temporary-files)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Xsl.XslCompiledTransform a ...)))))
  (define (is? a) (clr-is System.Xml.Xsl.XslCompiledTransform a))
  (define (xsl-compiled-transform? a)
    (clr-is System.Xml.Xsl.XslCompiledTransform a))
  (define-method-port
    transform
    System.Xml.Xsl.XslCompiledTransform
    Transform
    (System.Void
      System.Xml.XmlReader
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlWriter
      System.Xml.XmlResolver)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlWriter)
    (System.Void System.Xml.XPath.IXPathNavigable System.Xml.XmlWriter)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList
      System.IO.Stream)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList
      System.IO.TextWriter)
    (System.Void
      System.Xml.XmlReader
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlWriter)
    (System.Void
      System.Xml.XmlReader
      System.Xml.Xsl.XsltArgumentList
      System.IO.TextWriter)
    (System.Void
      System.Xml.XmlReader
      System.Xml.Xsl.XsltArgumentList
      System.IO.Stream)
    (System.Void System.Xml.XmlReader System.Xml.XmlWriter)
    (System.Void
      System.String
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlWriter)
    (System.Void
      System.String
      System.Xml.Xsl.XsltArgumentList
      System.IO.TextWriter)
    (System.Void
      System.String
      System.Xml.Xsl.XsltArgumentList
      System.IO.Stream)
    (System.Void System.String System.Xml.XmlWriter)
    (System.Void System.String System.String))
  (define-method-port
    load
    System.Xml.Xsl.XslCompiledTransform
    Load
    (System.Void
      System.String
      System.Xml.Xsl.XsltSettings
      System.Xml.XmlResolver)
    (System.Void
      System.Xml.XmlReader
      System.Xml.Xsl.XsltSettings
      System.Xml.XmlResolver)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltSettings
      System.Xml.XmlResolver)
    (System.Void System.Xml.XPath.IXPathNavigable)
    (System.Void System.Xml.XmlReader)
    (System.Void System.String))
  (define-field-port
    output-settings
    #f
    #f
    (property:)
    System.Xml.Xsl.XslCompiledTransform
    OutputSettings
    System.Xml.XmlWriterSettings)
  (define-field-port
    temporary-files
    #f
    #f
    (property:)
    System.Xml.Xsl.XslCompiledTransform
    TemporaryFiles
    System.CodeDom.Compiler.TempFileCollection))

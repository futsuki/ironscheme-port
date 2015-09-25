(library (mono xml xsl xsl-moded-template-table)
  (export new is? xsl-moded-template-table? add find-match mode)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.XslModedTemplateTable a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslModedTemplateTable a))
  (define (xsl-moded-template-table? a)
    (clr-is Mono.Xml.Xsl.XslModedTemplateTable a))
  (define-method-port
    add
    Mono.Xml.Xsl.XslModedTemplateTable
    Add
    (System.Void Mono.Xml.Xsl.XslTemplate Mono.Xml.XPath.Pattern)
    (System.Void Mono.Xml.Xsl.XslTemplate))
  (define-method-port
    find-match
    Mono.Xml.Xsl.XslModedTemplateTable
    FindMatch
    (Mono.Xml.Xsl.XslTemplate
      System.Xml.XPath.XPathNavigator
      Mono.Xml.Xsl.XslTransformProcessor))
  (define-field-port
    mode
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslModedTemplateTable
    Mode
    System.Xml.XmlQualifiedName))

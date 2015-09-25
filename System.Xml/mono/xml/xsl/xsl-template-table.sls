(library (mono xml xsl xsl-template-table)
  (export new
          is?
          xsl-template-table?
          add
          find-match
          find-template
          template-tables
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XslTemplateTable a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslTemplateTable a))
  (define (xsl-template-table? a)
    (clr-is Mono.Xml.Xsl.XslTemplateTable a))
  (define-method-port
    add
    Mono.Xml.Xsl.XslTemplateTable
    Add
    (System.Void Mono.Xml.Xsl.XslModedTemplateTable)
    (System.Void Mono.Xml.Xsl.XslTemplate))
  (define-method-port
    find-match
    Mono.Xml.Xsl.XslTemplateTable
    FindMatch
    (Mono.Xml.Xsl.XslTemplate
      System.Xml.XPath.XPathNavigator
      System.Xml.XmlQualifiedName
      Mono.Xml.Xsl.XslTransformProcessor))
  (define-method-port
    find-template
    Mono.Xml.Xsl.XslTemplateTable
    FindTemplate
    (Mono.Xml.Xsl.XslTemplate System.Xml.XmlQualifiedName))
  (define-field-port
    template-tables
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTemplateTable
    TemplateTables
    System.Collections.Hashtable)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTemplateTable
    Item
    Mono.Xml.Xsl.XslModedTemplateTable))

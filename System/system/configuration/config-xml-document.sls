(library (system configuration config-xml-document)
  (export new
          is?
          config-xml-document?
          load-single-element
          load
          create-whitespace
          create-text-node
          create-significant-whitespace
          create-attribute
          create-cdata-section
          create-element
          create-comment
          filename
          line-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.ConfigXmlDocument a ...)))))
  (define (is? a) (clr-is System.Configuration.ConfigXmlDocument a))
  (define (config-xml-document? a)
    (clr-is System.Configuration.ConfigXmlDocument a))
  (define-method-port
    load-single-element
    System.Configuration.ConfigXmlDocument
    LoadSingleElement
    (System.Void System.String System.Xml.XmlTextReader))
  (define-method-port
    load
    System.Configuration.ConfigXmlDocument
    Load
    (System.Void System.String))
  (define-method-port
    create-whitespace
    System.Configuration.ConfigXmlDocument
    CreateWhitespace
    (System.Xml.XmlWhitespace System.String))
  (define-method-port
    create-text-node
    System.Configuration.ConfigXmlDocument
    CreateTextNode
    (System.Xml.XmlText System.String))
  (define-method-port
    create-significant-whitespace
    System.Configuration.ConfigXmlDocument
    CreateSignificantWhitespace
    (System.Xml.XmlSignificantWhitespace System.String))
  (define-method-port
    create-attribute
    System.Configuration.ConfigXmlDocument
    CreateAttribute
    (System.Xml.XmlAttribute System.String System.String System.String))
  (define-method-port
    create-cdata-section
    System.Configuration.ConfigXmlDocument
    CreateCDataSection
    (System.Xml.XmlCDataSection System.String))
  (define-method-port
    create-element
    System.Configuration.ConfigXmlDocument
    CreateElement
    (System.Xml.XmlElement System.String System.String System.String))
  (define-method-port
    create-comment
    System.Configuration.ConfigXmlDocument
    CreateComment
    (System.Xml.XmlComment System.String))
  (define-field-port
    filename
    #f
    #f
    (property:)
    System.Configuration.ConfigXmlDocument
    Filename
    System.String)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Configuration.ConfigXmlDocument
    LineNumber
    System.Int32))

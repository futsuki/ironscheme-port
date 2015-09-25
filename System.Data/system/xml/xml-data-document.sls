(library (system xml xml-data-document)
  (export new
          is?
          xml-data-document?
          clone-node
          get-element-by-id
          load
          create-element
          get-row-from-element
          get-element-from-row
          create-entity-reference
          data-set)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlDataDocument a ...)))))
  (define (is? a) (clr-is System.Xml.XmlDataDocument a))
  (define (xml-data-document? a) (clr-is System.Xml.XmlDataDocument a))
  (define-method-port
    clone-node
    System.Xml.XmlDataDocument
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    get-element-by-id
    System.Xml.XmlDataDocument
    GetElementById
    (System.Xml.XmlElement System.String))
  (define-method-port
    load
    System.Xml.XmlDataDocument
    Load
    (System.Void System.Xml.XmlReader)
    (System.Void System.IO.TextReader)
    (System.Void System.String)
    (System.Void System.IO.Stream))
  (define-method-port
    create-element
    System.Xml.XmlDataDocument
    CreateElement
    (System.Xml.XmlElement System.String System.String System.String))
  (define-method-port
    get-row-from-element
    System.Xml.XmlDataDocument
    GetRowFromElement
    (System.Data.DataRow System.Xml.XmlElement))
  (define-method-port
    get-element-from-row
    System.Xml.XmlDataDocument
    GetElementFromRow
    (System.Xml.XmlElement System.Data.DataRow))
  (define-method-port
    create-entity-reference
    System.Xml.XmlDataDocument
    CreateEntityReference
    (System.Xml.XmlEntityReference System.String))
  (define-field-port
    data-set
    #f
    #f
    (property:)
    System.Xml.XmlDataDocument
    DataSet
    System.Data.DataSet))

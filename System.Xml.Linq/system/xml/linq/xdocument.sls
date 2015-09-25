(library (system xml linq xdocument)
  (export new
          is?
          xdocument?
          parse
          load
          save
          write-to
          declaration-get
          declaration-set!
          declaration-update!
          document-type
          node-type
          root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Linq.XDocument a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XDocument a))
  (define (xdocument? a) (clr-is System.Xml.Linq.XDocument a))
  (define-method-port
    parse
    System.Xml.Linq.XDocument
    Parse
    (static:
      System.Xml.Linq.XDocument
      System.String
      System.Xml.Linq.LoadOptions)
    (static: System.Xml.Linq.XDocument System.String))
  (define-method-port
    load
    System.Xml.Linq.XDocument
    Load
    (static:
      System.Xml.Linq.XDocument
      System.Xml.XmlReader
      System.Xml.Linq.LoadOptions)
    (static: System.Xml.Linq.XDocument System.Xml.XmlReader)
    (static:
      System.Xml.Linq.XDocument
      System.IO.TextReader
      System.Xml.Linq.LoadOptions)
    (static: System.Xml.Linq.XDocument System.IO.TextReader)
    (static:
      System.Xml.Linq.XDocument
      System.IO.Stream
      System.Xml.Linq.LoadOptions)
    (static: System.Xml.Linq.XDocument System.IO.Stream)
    (static:
      System.Xml.Linq.XDocument
      System.String
      System.Xml.Linq.LoadOptions)
    (static: System.Xml.Linq.XDocument System.String))
  (define-method-port
    save
    System.Xml.Linq.XDocument
    Save
    (System.Void System.Xml.XmlWriter)
    (System.Void System.IO.TextWriter System.Xml.Linq.SaveOptions)
    (System.Void System.IO.TextWriter)
    (System.Void System.String System.Xml.Linq.SaveOptions)
    (System.Void System.String))
  (define-method-port
    write-to
    System.Xml.Linq.XDocument
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    declaration-get
    declaration-set!
    declaration-update!
    (property:)
    System.Xml.Linq.XDocument
    Declaration
    System.Xml.Linq.XDeclaration)
  (define-field-port
    document-type
    #f
    #f
    (property:)
    System.Xml.Linq.XDocument
    DocumentType
    System.Xml.Linq.XDocumentType)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Linq.XDocument
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    root
    #f
    #f
    (property:)
    System.Xml.Linq.XDocument
    Root
    System.Xml.Linq.XElement))

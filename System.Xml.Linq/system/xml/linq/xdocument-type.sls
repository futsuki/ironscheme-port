(library (system xml linq xdocument-type)
  (export new
          is?
          xdocument-type?
          write-to
          name-get
          name-set!
          name-update!
          public-id-get
          public-id-set!
          public-id-update!
          system-id-get
          system-id-set!
          system-id-update!
          internal-subset-get
          internal-subset-set!
          internal-subset-update!
          node-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Linq.XDocumentType a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XDocumentType a))
  (define (xdocument-type? a) (clr-is System.Xml.Linq.XDocumentType a))
  (define-method-port
    write-to
    System.Xml.Linq.XDocumentType
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Linq.XDocumentType
    Name
    System.String)
  (define-field-port
    public-id-get
    public-id-set!
    public-id-update!
    (property:)
    System.Xml.Linq.XDocumentType
    PublicId
    System.String)
  (define-field-port
    system-id-get
    system-id-set!
    system-id-update!
    (property:)
    System.Xml.Linq.XDocumentType
    SystemId
    System.String)
  (define-field-port
    internal-subset-get
    internal-subset-set!
    internal-subset-update!
    (property:)
    System.Xml.Linq.XDocumentType
    InternalSubset
    System.String)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Linq.XDocumentType
    NodeType
    System.Xml.XmlNodeType))

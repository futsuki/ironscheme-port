(library (system xml linq xobject)
  (export is?
          xobject?
          remove-annotations
          add-annotation
          annotation
          annotations
          base-uri
          document
          node-type
          parent)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Linq.XObject a))
  (define (xobject? a) (clr-is System.Xml.Linq.XObject a))
  (define-method-port
    remove-annotations
    System.Xml.Linq.XObject
    RemoveAnnotations
    (System.Void System.Type))
  (define-method-port
    add-annotation
    System.Xml.Linq.XObject
    AddAnnotation
    (System.Void System.Object))
  (define-method-port
    annotation
    System.Xml.Linq.XObject
    Annotation
    (System.Object System.Type))
  (define-method-port
    annotations
    System.Xml.Linq.XObject
    Annotations
    ("System.Collections.Generic.IEnumerable`1[[System.Object, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Type))
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    System.Xml.Linq.XObject
    BaseUri
    System.String)
  (define-field-port
    document
    #f
    #f
    (property:)
    System.Xml.Linq.XObject
    Document
    System.Xml.Linq.XDocument)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Linq.XObject
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    parent
    #f
    #f
    (property:)
    System.Xml.Linq.XObject
    Parent
    System.Xml.Linq.XElement))

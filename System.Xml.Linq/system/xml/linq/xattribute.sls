(library (system xml linq xattribute)
  (export new
          is?
          xattribute?
          remove
          set-value
          to-string
          empty-sequence
          is-namespace-declaration?
          name
          next-attribute
          node-type
          previous-attribute
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Linq.XAttribute a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XAttribute a))
  (define (xattribute? a) (clr-is System.Xml.Linq.XAttribute a))
  (define-method-port
    remove
    System.Xml.Linq.XAttribute
    Remove
    (System.Void))
  (define-method-port
    set-value
    System.Xml.Linq.XAttribute
    SetValue
    (System.Void System.Object))
  (define-method-port
    to-string
    System.Xml.Linq.XAttribute
    ToString
    (System.String))
  (define-field-port
    empty-sequence
    #f
    #f
    (static: property:)
    System.Xml.Linq.XAttribute
    EmptySequence
    "System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XAttribute, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    is-namespace-declaration?
    #f
    #f
    (property:)
    System.Xml.Linq.XAttribute
    IsNamespaceDeclaration
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.Linq.XAttribute
    Name
    System.Xml.Linq.XName)
  (define-field-port
    next-attribute
    #f
    #f
    (property:)
    System.Xml.Linq.XAttribute
    NextAttribute
    System.Xml.Linq.XAttribute)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Linq.XAttribute
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    previous-attribute
    #f
    #f
    (property:)
    System.Xml.Linq.XAttribute
    PreviousAttribute
    System.Xml.Linq.XAttribute)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.Linq.XAttribute
    Value
    System.String))

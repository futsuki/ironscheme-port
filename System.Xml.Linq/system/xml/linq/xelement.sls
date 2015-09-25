(library (system xml linq xelement)
  (export new
          is?
          xelement?
          replace-all
          parse
          load
          attribute
          ancestors-and-self
          descendant-nodes-and-self
          save
          attributes
          get-namespace-of-prefix
          write-to
          replace-attributes
          get-default-namespace
          set-element-value
          set-value
          remove-attributes
          remove-all
          descendants-and-self
          get-prefix-of-namespace
          set-attribute-value
          empty-sequence
          first-attribute
          last-attribute
          has-attributes?
          has-elements?
          is-empty?
          name-get
          name-set!
          name-update!
          node-type
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Linq.XElement a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XElement a))
  (define (xelement? a) (clr-is System.Xml.Linq.XElement a))
  (define-method-port
    replace-all
    System.Xml.Linq.XElement
    ReplaceAll
    (System.Void System.Object[])
    (System.Void System.Object))
  (define-method-port
    parse
    System.Xml.Linq.XElement
    Parse
    (static:
      System.Xml.Linq.XElement
      System.String
      System.Xml.Linq.LoadOptions)
    (static: System.Xml.Linq.XElement System.String))
  (define-method-port
    load
    System.Xml.Linq.XElement
    Load
    (static:
      System.Xml.Linq.XElement
      System.Xml.XmlReader
      System.Xml.Linq.LoadOptions)
    (static: System.Xml.Linq.XElement System.Xml.XmlReader)
    (static:
      System.Xml.Linq.XElement
      System.IO.TextReader
      System.Xml.Linq.LoadOptions)
    (static: System.Xml.Linq.XElement System.IO.TextReader)
    (static:
      System.Xml.Linq.XElement
      System.String
      System.Xml.Linq.LoadOptions)
    (static: System.Xml.Linq.XElement System.String))
  (define-method-port
    attribute
    System.Xml.Linq.XElement
    Attribute
    (System.Xml.Linq.XAttribute System.Xml.Linq.XName))
  (define-method-port
    ancestors-and-self
    System.Xml.Linq.XElement
    AncestorsAndSelf
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Xml.Linq.XName)
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    descendant-nodes-and-self
    System.Xml.Linq.XElement
    DescendantNodesAndSelf
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XNode, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    save
    System.Xml.Linq.XElement
    Save
    (System.Void System.Xml.XmlWriter)
    (System.Void System.IO.TextWriter System.Xml.Linq.SaveOptions)
    (System.Void System.IO.TextWriter)
    (System.Void System.String System.Xml.Linq.SaveOptions)
    (System.Void System.String))
  (define-method-port
    attributes
    System.Xml.Linq.XElement
    Attributes
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XAttribute, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Xml.Linq.XName)
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XAttribute, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    get-namespace-of-prefix
    System.Xml.Linq.XElement
    GetNamespaceOfPrefix
    (System.Xml.Linq.XNamespace System.String))
  (define-method-port
    write-to
    System.Xml.Linq.XElement
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    replace-attributes
    System.Xml.Linq.XElement
    ReplaceAttributes
    (System.Void System.Object[])
    (System.Void System.Object))
  (define-method-port
    get-default-namespace
    System.Xml.Linq.XElement
    GetDefaultNamespace
    (System.Xml.Linq.XNamespace))
  (define-method-port
    set-element-value
    System.Xml.Linq.XElement
    SetElementValue
    (System.Void System.Xml.Linq.XName System.Object))
  (define-method-port
    set-value
    System.Xml.Linq.XElement
    SetValue
    (System.Void System.Object))
  (define-method-port
    remove-attributes
    System.Xml.Linq.XElement
    RemoveAttributes
    (System.Void))
  (define-method-port
    remove-all
    System.Xml.Linq.XElement
    RemoveAll
    (System.Void))
  (define-method-port
    descendants-and-self
    System.Xml.Linq.XElement
    DescendantsAndSelf
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Xml.Linq.XName)
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    get-prefix-of-namespace
    System.Xml.Linq.XElement
    GetPrefixOfNamespace
    (System.String System.Xml.Linq.XNamespace))
  (define-method-port
    set-attribute-value
    System.Xml.Linq.XElement
    SetAttributeValue
    (System.Void System.Xml.Linq.XName System.Object))
  (define-field-port
    empty-sequence
    #f
    #f
    (static: property:)
    System.Xml.Linq.XElement
    EmptySequence
    "System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    first-attribute
    #f
    #f
    (property:)
    System.Xml.Linq.XElement
    FirstAttribute
    System.Xml.Linq.XAttribute)
  (define-field-port
    last-attribute
    #f
    #f
    (property:)
    System.Xml.Linq.XElement
    LastAttribute
    System.Xml.Linq.XAttribute)
  (define-field-port
    has-attributes?
    #f
    #f
    (property:)
    System.Xml.Linq.XElement
    HasAttributes
    System.Boolean)
  (define-field-port
    has-elements?
    #f
    #f
    (property:)
    System.Xml.Linq.XElement
    HasElements
    System.Boolean)
  (define-field-port
    is-empty?
    #f
    #f
    (property:)
    System.Xml.Linq.XElement
    IsEmpty
    System.Boolean)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Linq.XElement
    Name
    System.Xml.Linq.XName)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Linq.XElement
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.Linq.XElement
    Value
    System.String))

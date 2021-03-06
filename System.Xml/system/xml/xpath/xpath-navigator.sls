(library (system xml xpath xpath-navigator)
  (export is?
          xpath-navigator?
          select-descendants
          move-to-first-attribute?
          move-to-namespace?
          check-validity?
          move-to-parent?
          move-to-next-namespace?
          delete-range
          append-child-element
          get-namespace
          replace-range
          lookup-prefix
          is-descendant?
          insert-after
          get-namespaces-in-scope
          evaluate
          set-typed-value
          select-ancestors
          move-to-next-attribute?
          move-to?
          select-single-node
          create-navigator
          select-children
          move-to-first-child?
          delete-self
          clone
          move-to-attribute?
          insert-before
          replace-self
          to-string
          select
          insert-element-before
          read-subtree
          create-attribute
          matches?
          compare-position
          set-value
          move-to-child?
          is-same-position?
          move-to-next?
          move-to-id?
          insert-element-after
          lookup-namespace
          create-attributes
          move-to-root
          append-child
          move-to-first-namespace?
          prepend-child-element
          move-to-following?
          move-to-previous?
          move-to-first?
          compile
          write-subtree
          prepend-child
          get-attribute
          value-as
          navigator-comparer
          base-uri
          can-edit?
          has-attributes?
          has-children?
          is-empty-element?
          local-name
          name
          namespace-uri
          name-table
          node-type
          prefix
          xml-lang
          inner-xml-get
          inner-xml-set!
          inner-xml-update!
          is-node?
          outer-xml-get
          outer-xml-set!
          outer-xml-update!
          schema-info
          typed-value
          underlying-object
          value-as-boolean?
          value-as-date-time
          value-as-double
          value-as-int
          value-as-long
          value-type
          xml-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XPath.XPathNavigator a))
  (define (xpath-navigator? a)
    (clr-is System.Xml.XPath.XPathNavigator a))
  (define-method-port
    select-descendants
    System.Xml.XPath.XPathNavigator
    SelectDescendants
    (System.Xml.XPath.XPathNodeIterator
      System.String
      System.String
      System.Boolean)
    (System.Xml.XPath.XPathNodeIterator
      System.Xml.XPath.XPathNodeType
      System.Boolean))
  (define-method-port
    move-to-first-attribute?
    System.Xml.XPath.XPathNavigator
    MoveToFirstAttribute
    (System.Boolean))
  (define-method-port
    move-to-namespace?
    System.Xml.XPath.XPathNavigator
    MoveToNamespace
    (System.Boolean System.String))
  (define-method-port
    check-validity?
    System.Xml.XPath.XPathNavigator
    CheckValidity
    (System.Boolean
      System.Xml.Schema.XmlSchemaSet
      System.Xml.Schema.ValidationEventHandler))
  (define-method-port
    move-to-parent?
    System.Xml.XPath.XPathNavigator
    MoveToParent
    (System.Boolean))
  (define-method-port
    move-to-next-namespace?
    System.Xml.XPath.XPathNavigator
    MoveToNextNamespace
    (System.Boolean System.Xml.XPath.XPathNamespaceScope)
    (System.Boolean))
  (define-method-port
    delete-range
    System.Xml.XPath.XPathNavigator
    DeleteRange
    (System.Void System.Xml.XPath.XPathNavigator))
  (define-method-port
    append-child-element
    System.Xml.XPath.XPathNavigator
    AppendChildElement
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    get-namespace
    System.Xml.XPath.XPathNavigator
    GetNamespace
    (System.String System.String))
  (define-method-port
    replace-range
    System.Xml.XPath.XPathNavigator
    ReplaceRange
    (System.Xml.XmlWriter System.Xml.XPath.XPathNavigator))
  (define-method-port
    lookup-prefix
    System.Xml.XPath.XPathNavigator
    LookupPrefix
    (System.String System.String))
  (define-method-port
    is-descendant?
    System.Xml.XPath.XPathNavigator
    IsDescendant
    (System.Boolean System.Xml.XPath.XPathNavigator))
  (define-method-port
    insert-after
    System.Xml.XPath.XPathNavigator
    InsertAfter
    (System.Void System.Xml.XPath.XPathNavigator)
    (System.Void System.Xml.XmlReader)
    (System.Void System.String)
    (System.Xml.XmlWriter))
  (define-method-port
    get-namespaces-in-scope
    System.Xml.XPath.XPathNavigator
    GetNamespacesInScope
    ("System.Collections.Generic.IDictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Xml.XmlNamespaceScope))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathNavigator
    Evaluate
    (System.Object System.String System.Xml.IXmlNamespaceResolver)
    (System.Object
      System.Xml.XPath.XPathExpression
      System.Xml.XPath.XPathNodeIterator)
    (System.Object System.Xml.XPath.XPathExpression)
    (System.Object System.String))
  (define-method-port
    set-typed-value
    System.Xml.XPath.XPathNavigator
    SetTypedValue
    (System.Void System.Object))
  (define-method-port
    select-ancestors
    System.Xml.XPath.XPathNavigator
    SelectAncestors
    (System.Xml.XPath.XPathNodeIterator
      System.String
      System.String
      System.Boolean)
    (System.Xml.XPath.XPathNodeIterator
      System.Xml.XPath.XPathNodeType
      System.Boolean))
  (define-method-port
    move-to-next-attribute?
    System.Xml.XPath.XPathNavigator
    MoveToNextAttribute
    (System.Boolean))
  (define-method-port
    move-to?
    System.Xml.XPath.XPathNavigator
    MoveTo
    (System.Boolean System.Xml.XPath.XPathNavigator))
  (define-method-port
    select-single-node
    System.Xml.XPath.XPathNavigator
    SelectSingleNode
    (System.Xml.XPath.XPathNavigator System.Xml.XPath.XPathExpression)
    (System.Xml.XPath.XPathNavigator
      System.String
      System.Xml.IXmlNamespaceResolver)
    (System.Xml.XPath.XPathNavigator System.String))
  (define-method-port
    create-navigator
    System.Xml.XPath.XPathNavigator
    CreateNavigator
    (System.Xml.XPath.XPathNavigator))
  (define-method-port
    select-children
    System.Xml.XPath.XPathNavigator
    SelectChildren
    (System.Xml.XPath.XPathNodeIterator System.String System.String)
    (System.Xml.XPath.XPathNodeIterator System.Xml.XPath.XPathNodeType))
  (define-method-port
    move-to-first-child?
    System.Xml.XPath.XPathNavigator
    MoveToFirstChild
    (System.Boolean))
  (define-method-port
    delete-self
    System.Xml.XPath.XPathNavigator
    DeleteSelf
    (System.Void))
  (define-method-port
    clone
    System.Xml.XPath.XPathNavigator
    Clone
    (System.Xml.XPath.XPathNavigator))
  (define-method-port
    move-to-attribute?
    System.Xml.XPath.XPathNavigator
    MoveToAttribute
    (System.Boolean System.String System.String))
  (define-method-port
    insert-before
    System.Xml.XPath.XPathNavigator
    InsertBefore
    (System.Void System.Xml.XPath.XPathNavigator)
    (System.Void System.Xml.XmlReader)
    (System.Void System.String)
    (System.Xml.XmlWriter))
  (define-method-port
    replace-self
    System.Xml.XPath.XPathNavigator
    ReplaceSelf
    (System.Void System.Xml.XPath.XPathNavigator)
    (System.Void System.Xml.XmlReader)
    (System.Void System.String))
  (define-method-port
    to-string
    System.Xml.XPath.XPathNavigator
    ToString
    (System.String))
  (define-method-port
    select
    System.Xml.XPath.XPathNavigator
    Select
    (System.Xml.XPath.XPathNodeIterator
      System.String
      System.Xml.IXmlNamespaceResolver)
    (System.Xml.XPath.XPathNodeIterator
      System.Xml.XPath.XPathExpression)
    (System.Xml.XPath.XPathNodeIterator System.String))
  (define-method-port
    insert-element-before
    System.Xml.XPath.XPathNavigator
    InsertElementBefore
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    read-subtree
    System.Xml.XPath.XPathNavigator
    ReadSubtree
    (System.Xml.XmlReader))
  (define-method-port
    create-attribute
    System.Xml.XPath.XPathNavigator
    CreateAttribute
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    matches?
    System.Xml.XPath.XPathNavigator
    Matches
    (System.Boolean System.Xml.XPath.XPathExpression)
    (System.Boolean System.String))
  (define-method-port
    compare-position
    System.Xml.XPath.XPathNavigator
    ComparePosition
    (System.Xml.XmlNodeOrder System.Xml.XPath.XPathNavigator))
  (define-method-port
    set-value
    System.Xml.XPath.XPathNavigator
    SetValue
    (System.Void System.String))
  (define-method-port
    move-to-child?
    System.Xml.XPath.XPathNavigator
    MoveToChild
    (System.Boolean System.String System.String)
    (System.Boolean System.Xml.XPath.XPathNodeType))
  (define-method-port
    is-same-position?
    System.Xml.XPath.XPathNavigator
    IsSamePosition
    (System.Boolean System.Xml.XPath.XPathNavigator))
  (define-method-port
    move-to-next?
    System.Xml.XPath.XPathNavigator
    MoveToNext
    (System.Boolean System.Xml.XPath.XPathNodeType)
    (System.Boolean System.String System.String)
    (System.Boolean))
  (define-method-port
    move-to-id?
    System.Xml.XPath.XPathNavigator
    MoveToId
    (System.Boolean System.String))
  (define-method-port
    insert-element-after
    System.Xml.XPath.XPathNavigator
    InsertElementAfter
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    lookup-namespace
    System.Xml.XPath.XPathNavigator
    LookupNamespace
    (System.String System.String))
  (define-method-port
    create-attributes
    System.Xml.XPath.XPathNavigator
    CreateAttributes
    (System.Xml.XmlWriter))
  (define-method-port
    move-to-root
    System.Xml.XPath.XPathNavigator
    MoveToRoot
    (System.Void))
  (define-method-port
    append-child
    System.Xml.XPath.XPathNavigator
    AppendChild
    (System.Void System.Xml.XPath.XPathNavigator)
    (System.Void System.Xml.XmlReader)
    (System.Void System.String)
    (System.Xml.XmlWriter))
  (define-method-port
    move-to-first-namespace?
    System.Xml.XPath.XPathNavigator
    MoveToFirstNamespace
    (System.Boolean System.Xml.XPath.XPathNamespaceScope)
    (System.Boolean))
  (define-method-port
    prepend-child-element
    System.Xml.XPath.XPathNavigator
    PrependChildElement
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    move-to-following?
    System.Xml.XPath.XPathNavigator
    MoveToFollowing
    (System.Boolean
      System.Xml.XPath.XPathNodeType
      System.Xml.XPath.XPathNavigator)
    (System.Boolean System.Xml.XPath.XPathNodeType)
    (System.Boolean
      System.String
      System.String
      System.Xml.XPath.XPathNavigator)
    (System.Boolean System.String System.String))
  (define-method-port
    move-to-previous?
    System.Xml.XPath.XPathNavigator
    MoveToPrevious
    (System.Boolean))
  (define-method-port
    move-to-first?
    System.Xml.XPath.XPathNavigator
    MoveToFirst
    (System.Boolean))
  (define-method-port
    compile
    System.Xml.XPath.XPathNavigator
    Compile
    (System.Xml.XPath.XPathExpression System.String))
  (define-method-port
    write-subtree
    System.Xml.XPath.XPathNavigator
    WriteSubtree
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    prepend-child
    System.Xml.XPath.XPathNavigator
    PrependChild
    (System.Void System.Xml.XPath.XPathNavigator)
    (System.Void System.Xml.XmlReader)
    (System.Void System.String)
    (System.Xml.XmlWriter))
  (define-method-port
    get-attribute
    System.Xml.XPath.XPathNavigator
    GetAttribute
    (System.String System.String System.String))
  (define-method-port
    value-as
    System.Xml.XPath.XPathNavigator
    ValueAs
    (System.Object System.Type System.Xml.IXmlNamespaceResolver))
  (define-field-port
    navigator-comparer
    #f
    #f
    (static: property:)
    System.Xml.XPath.XPathNavigator
    NavigatorComparer
    System.Collections.IEqualityComparer)
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    BaseURI
    System.String)
  (define-field-port
    can-edit?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    CanEdit
    System.Boolean)
  (define-field-port
    has-attributes?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    HasAttributes
    System.Boolean)
  (define-field-port
    has-children?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    HasChildren
    System.Boolean)
  (define-field-port
    is-empty-element?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    IsEmptyElement
    System.Boolean)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    Name
    System.String)
  (define-field-port
    namespace-uri
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    NamespaceURI
    System.String)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    NodeType
    System.Xml.XPath.XPathNodeType)
  (define-field-port
    prefix
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    Prefix
    System.String)
  (define-field-port
    xml-lang
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    XmlLang
    System.String)
  (define-field-port
    inner-xml-get
    inner-xml-set!
    inner-xml-update!
    (property:)
    System.Xml.XPath.XPathNavigator
    InnerXml
    System.String)
  (define-field-port
    is-node?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    IsNode
    System.Boolean)
  (define-field-port
    outer-xml-get
    outer-xml-set!
    outer-xml-update!
    (property:)
    System.Xml.XPath.XPathNavigator
    OuterXml
    System.String)
  (define-field-port
    schema-info
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    SchemaInfo
    System.Xml.Schema.IXmlSchemaInfo)
  (define-field-port
    typed-value
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    TypedValue
    System.Object)
  (define-field-port
    underlying-object
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    UnderlyingObject
    System.Object)
  (define-field-port
    value-as-boolean?
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    ValueAsBoolean
    System.Boolean)
  (define-field-port
    value-as-date-time
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    ValueAsDateTime
    System.DateTime)
  (define-field-port
    value-as-double
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    ValueAsDouble
    System.Double)
  (define-field-port
    value-as-int
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    ValueAsInt
    System.Int32)
  (define-field-port
    value-as-long
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    ValueAsLong
    System.Int64)
  (define-field-port
    value-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    ValueType
    System.Type)
  (define-field-port
    xml-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNavigator
    XmlType
    System.Xml.Schema.XmlSchemaType))

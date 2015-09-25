(library (system xml linq xnode)
  (export is?
          xnode?
          is-before?
          is-after?
          deep-equals?
          replace-with
          compare-document-order
          ancestors
          elements-after-self
          add-after-self
          nodes-before-self
          read-from
          write-to
          remove
          elements-before-self
          add-before-self
          nodes-after-self
          create-reader
          to-string
          document-order-comparer
          equality-comparer
          previous-node
          next-node)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Linq.XNode a))
  (define (xnode? a) (clr-is System.Xml.Linq.XNode a))
  (define-method-port
    is-before?
    System.Xml.Linq.XNode
    IsBefore
    (System.Boolean System.Xml.Linq.XNode))
  (define-method-port
    is-after?
    System.Xml.Linq.XNode
    IsAfter
    (System.Boolean System.Xml.Linq.XNode))
  (define-method-port
    deep-equals?
    System.Xml.Linq.XNode
    DeepEquals
    (static:
      System.Boolean
      System.Xml.Linq.XNode
      System.Xml.Linq.XNode))
  (define-method-port
    replace-with
    System.Xml.Linq.XNode
    ReplaceWith
    (System.Void System.Object[])
    (System.Void System.Object))
  (define-method-port
    compare-document-order
    System.Xml.Linq.XNode
    CompareDocumentOrder
    (static: System.Int32 System.Xml.Linq.XNode System.Xml.Linq.XNode))
  (define-method-port
    ancestors
    System.Xml.Linq.XNode
    Ancestors
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Xml.Linq.XName)
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    elements-after-self
    System.Xml.Linq.XNode
    ElementsAfterSelf
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Xml.Linq.XName)
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    add-after-self
    System.Xml.Linq.XNode
    AddAfterSelf
    (System.Void System.Object[])
    (System.Void System.Object))
  (define-method-port
    nodes-before-self
    System.Xml.Linq.XNode
    NodesBeforeSelf
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XNode, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    read-from
    System.Xml.Linq.XNode
    ReadFrom
    (static: System.Xml.Linq.XNode System.Xml.XmlReader))
  (define-method-port
    write-to
    System.Xml.Linq.XNode
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port remove System.Xml.Linq.XNode Remove (System.Void))
  (define-method-port
    elements-before-self
    System.Xml.Linq.XNode
    ElementsBeforeSelf
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Xml.Linq.XName)
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    add-before-self
    System.Xml.Linq.XNode
    AddBeforeSelf
    (System.Void System.Object[])
    (System.Void System.Object))
  (define-method-port
    nodes-after-self
    System.Xml.Linq.XNode
    NodesAfterSelf
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XNode, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    create-reader
    System.Xml.Linq.XNode
    CreateReader
    (System.Xml.XmlReader))
  (define-method-port
    to-string
    System.Xml.Linq.XNode
    ToString
    (System.String)
    (System.String System.Xml.Linq.SaveOptions))
  (define-field-port
    document-order-comparer
    #f
    #f
    (static: property:)
    System.Xml.Linq.XNode
    DocumentOrderComparer
    System.Xml.Linq.XNodeDocumentOrderComparer)
  (define-field-port
    equality-comparer
    #f
    #f
    (static: property:)
    System.Xml.Linq.XNode
    EqualityComparer
    System.Xml.Linq.XNodeEqualityComparer)
  (define-field-port
    previous-node
    #f
    #f
    (property:)
    System.Xml.Linq.XNode
    PreviousNode
    System.Xml.Linq.XNode)
  (define-field-port
    next-node
    #f
    #f
    (property:)
    System.Xml.Linq.XNode
    NextNode
    System.Xml.Linq.XNode))

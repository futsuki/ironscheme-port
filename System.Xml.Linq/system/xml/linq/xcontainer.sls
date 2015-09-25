(library (system xml linq xcontainer)
  (export is?
          xcontainer?
          elements
          descendant-nodes
          add-first
          remove-nodes
          nodes
          add
          create-writer
          element
          replace-nodes
          descendants
          first-node
          last-node)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Linq.XContainer a))
  (define (xcontainer? a) (clr-is System.Xml.Linq.XContainer a))
  (define-method-port
    elements
    System.Xml.Linq.XContainer
    Elements
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Xml.Linq.XName)
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    descendant-nodes
    System.Xml.Linq.XContainer
    DescendantNodes
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XNode, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    add-first
    System.Xml.Linq.XContainer
    AddFirst
    (System.Void System.Object[])
    (System.Void System.Object))
  (define-method-port
    remove-nodes
    System.Xml.Linq.XContainer
    RemoveNodes
    (System.Void))
  (define-method-port
    nodes
    System.Xml.Linq.XContainer
    Nodes
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XNode, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    add
    System.Xml.Linq.XContainer
    Add
    (System.Void System.Object[])
    (System.Void System.Object))
  (define-method-port
    create-writer
    System.Xml.Linq.XContainer
    CreateWriter
    (System.Xml.XmlWriter))
  (define-method-port
    element
    System.Xml.Linq.XContainer
    Element
    (System.Xml.Linq.XElement System.Xml.Linq.XName))
  (define-method-port
    replace-nodes
    System.Xml.Linq.XContainer
    ReplaceNodes
    (System.Void System.Object[])
    (System.Void System.Object))
  (define-method-port
    descendants
    System.Xml.Linq.XContainer
    Descendants
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Xml.Linq.XName)
    ("System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-field-port
    first-node
    #f
    #f
    (property:)
    System.Xml.Linq.XContainer
    FirstNode
    System.Xml.Linq.XNode)
  (define-field-port
    last-node
    #f
    #f
    (property:)
    System.Xml.Linq.XContainer
    LastNode
    System.Xml.Linq.XNode))

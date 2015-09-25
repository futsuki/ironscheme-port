(library (mono xml xpath dtmxpath-navigator2)
  (export new
          is?
          dtmxpath-navigator2?
          move-to-id?
          move-to-first-namespace?
          move-to-next-attribute?
          move-to-first-child?
          move-to-first?
          move-to-previous?
          compare-position
          get-namespace
          move-to?
          move-to-first-attribute?
          is-same-position?
          get-attribute
          move-to-namespace?
          move-to-next-namespace?
          move-to-next?
          move-to-attribute?
          clone
          move-to-root
          is-descendant?
          move-to-parent?
          base-uri
          has-attributes?
          has-children?
          is-empty-element?
          local-name
          name
          namespace-uri
          name-table
          node-type
          prefix
          value
          xml-lang)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.XPath.DTMXPathNavigator2 a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.DTMXPathNavigator2 a))
  (define (dtmxpath-navigator2? a)
    (clr-is Mono.Xml.XPath.DTMXPathNavigator2 a))
  (define-method-port
    move-to-id?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToId
    (System.Boolean System.String))
  (define-method-port
    move-to-first-namespace?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToFirstNamespace
    (System.Boolean System.Xml.XPath.XPathNamespaceScope))
  (define-method-port
    move-to-next-attribute?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToNextAttribute
    (System.Boolean))
  (define-method-port
    move-to-first-child?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToFirstChild
    (System.Boolean))
  (define-method-port
    move-to-first?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToFirst
    (System.Boolean))
  (define-method-port
    move-to-previous?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToPrevious
    (System.Boolean))
  (define-method-port
    compare-position
    Mono.Xml.XPath.DTMXPathNavigator2
    ComparePosition
    (System.Xml.XmlNodeOrder System.Xml.XPath.XPathNavigator))
  (define-method-port
    get-namespace
    Mono.Xml.XPath.DTMXPathNavigator2
    GetNamespace
    (System.String System.String))
  (define-method-port
    move-to?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveTo
    (System.Boolean System.Xml.XPath.XPathNavigator))
  (define-method-port
    move-to-first-attribute?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToFirstAttribute
    (System.Boolean))
  (define-method-port
    is-same-position?
    Mono.Xml.XPath.DTMXPathNavigator2
    IsSamePosition
    (System.Boolean System.Xml.XPath.XPathNavigator))
  (define-method-port
    get-attribute
    Mono.Xml.XPath.DTMXPathNavigator2
    GetAttribute
    (System.String System.String System.String))
  (define-method-port
    move-to-namespace?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToNamespace
    (System.Boolean System.String))
  (define-method-port
    move-to-next-namespace?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToNextNamespace
    (System.Boolean System.Xml.XPath.XPathNamespaceScope))
  (define-method-port
    move-to-next?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToNext
    (System.Boolean))
  (define-method-port
    move-to-attribute?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToAttribute
    (System.Boolean System.String System.String))
  (define-method-port
    clone
    Mono.Xml.XPath.DTMXPathNavigator2
    Clone
    (System.Xml.XPath.XPathNavigator))
  (define-method-port
    move-to-root
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToRoot
    (System.Void))
  (define-method-port
    is-descendant?
    Mono.Xml.XPath.DTMXPathNavigator2
    IsDescendant
    (System.Boolean System.Xml.XPath.XPathNavigator))
  (define-method-port
    move-to-parent?
    Mono.Xml.XPath.DTMXPathNavigator2
    MoveToParent
    (System.Boolean))
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    BaseURI
    System.String)
  (define-field-port
    has-attributes?
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    HasAttributes
    System.Boolean)
  (define-field-port
    has-children?
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    HasChildren
    System.Boolean)
  (define-field-port
    is-empty-element?
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    IsEmptyElement
    System.Boolean)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    Name
    System.String)
  (define-field-port
    namespace-uri
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    NamespaceURI
    System.String)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    NameTable
    System.Xml.XmlNameTable)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    NodeType
    System.Xml.XPath.XPathNodeType)
  (define-field-port
    prefix
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    Prefix
    System.String)
  (define-field-port
    value
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    Value
    System.String)
  (define-field-port
    xml-lang
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathNavigator2
    XmlLang
    System.String))

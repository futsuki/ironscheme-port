(library (system xml xpath base-iterator)
  (export is?
          base-iterator?
          move-next-core?
          to-string
          move-next?
          namespace-manager-get
          namespace-manager-set!
          namespace-manager-update!
          reverse-axis?
          comparable-position
          current-position)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XPath.BaseIterator a))
  (define (base-iterator? a) (clr-is System.Xml.XPath.BaseIterator a))
  (define-method-port
    move-next-core?
    System.Xml.XPath.BaseIterator
    MoveNextCore
    (System.Boolean))
  (define-method-port
    to-string
    System.Xml.XPath.BaseIterator
    ToString
    (System.String))
  (define-method-port
    move-next?
    System.Xml.XPath.BaseIterator
    MoveNext
    (System.Boolean))
  (define-field-port
    namespace-manager-get
    namespace-manager-set!
    namespace-manager-update!
    (property:)
    System.Xml.XPath.BaseIterator
    NamespaceManager
    System.Xml.IXmlNamespaceResolver)
  (define-field-port
    reverse-axis?
    #f
    #f
    (property:)
    System.Xml.XPath.BaseIterator
    ReverseAxis
    System.Boolean)
  (define-field-port
    comparable-position
    #f
    #f
    (property:)
    System.Xml.XPath.BaseIterator
    ComparablePosition
    System.Int32)
  (define-field-port
    current-position
    #f
    #f
    (property:)
    System.Xml.XPath.BaseIterator
    CurrentPosition
    System.Int32))

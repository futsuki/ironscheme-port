(library (system xml xml-namespace-manager)
  (export new
          is?
          xml-namespace-manager?
          lookup-namespace
          push-scope
          lookup-prefix
          get-enumerator
          pop-scope?
          add-namespace
          remove-namespace
          get-namespaces-in-scope
          has-namespace?
          default-namespace
          name-table)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlNamespaceManager a ...)))))
  (define (is? a) (clr-is System.Xml.XmlNamespaceManager a))
  (define (xml-namespace-manager? a)
    (clr-is System.Xml.XmlNamespaceManager a))
  (define-method-port
    lookup-namespace
    System.Xml.XmlNamespaceManager
    LookupNamespace
    (System.String System.String))
  (define-method-port
    push-scope
    System.Xml.XmlNamespaceManager
    PushScope
    (System.Void))
  (define-method-port
    lookup-prefix
    System.Xml.XmlNamespaceManager
    LookupPrefix
    (System.String System.String))
  (define-method-port
    get-enumerator
    System.Xml.XmlNamespaceManager
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    pop-scope?
    System.Xml.XmlNamespaceManager
    PopScope
    (System.Boolean))
  (define-method-port
    add-namespace
    System.Xml.XmlNamespaceManager
    AddNamespace
    (System.Void System.String System.String))
  (define-method-port
    remove-namespace
    System.Xml.XmlNamespaceManager
    RemoveNamespace
    (System.Void System.String System.String))
  (define-method-port
    get-namespaces-in-scope
    System.Xml.XmlNamespaceManager
    GetNamespacesInScope
    ("System.Collections.Generic.IDictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Xml.XmlNamespaceScope))
  (define-method-port
    has-namespace?
    System.Xml.XmlNamespaceManager
    HasNamespace
    (System.Boolean System.String))
  (define-field-port
    default-namespace
    #f
    #f
    (property:)
    System.Xml.XmlNamespaceManager
    DefaultNamespace
    System.String)
  (define-field-port
    name-table
    #f
    #f
    (property:)
    System.Xml.XmlNamespaceManager
    NameTable
    System.Xml.XmlNameTable))

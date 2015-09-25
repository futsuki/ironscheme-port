(library (mono xml xpath xpath-editable-document)
  (export new is? xpath-editable-document? create-navigator node)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.XPath.XPathEditableDocument a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.XPathEditableDocument a))
  (define (xpath-editable-document? a)
    (clr-is Mono.Xml.XPath.XPathEditableDocument a))
  (define-method-port
    create-navigator
    Mono.Xml.XPath.XPathEditableDocument
    CreateNavigator
    (System.Xml.XPath.XPathNavigator))
  (define-field-port
    node
    #f
    #f
    (property:)
    Mono.Xml.XPath.XPathEditableDocument
    Node
    System.Xml.XmlNode))

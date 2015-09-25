(library (system xml xml-node-changed-event-args)
  (export new
          is?
          xml-node-changed-event-args?
          action
          node
          old-parent
          new-parent
          old-value
          new-value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XmlNodeChangedEventArgs a ...)))))
  (define (is? a) (clr-is System.Xml.XmlNodeChangedEventArgs a))
  (define (xml-node-changed-event-args? a)
    (clr-is System.Xml.XmlNodeChangedEventArgs a))
  (define-field-port
    action
    #f
    #f
    (property:)
    System.Xml.XmlNodeChangedEventArgs
    Action
    System.Xml.XmlNodeChangedAction)
  (define-field-port
    node
    #f
    #f
    (property:)
    System.Xml.XmlNodeChangedEventArgs
    Node
    System.Xml.XmlNode)
  (define-field-port
    old-parent
    #f
    #f
    (property:)
    System.Xml.XmlNodeChangedEventArgs
    OldParent
    System.Xml.XmlNode)
  (define-field-port
    new-parent
    #f
    #f
    (property:)
    System.Xml.XmlNodeChangedEventArgs
    NewParent
    System.Xml.XmlNode)
  (define-field-port
    old-value
    #f
    #f
    (property:)
    System.Xml.XmlNodeChangedEventArgs
    OldValue
    System.String)
  (define-field-port
    new-value
    #f
    #f
    (property:)
    System.Xml.XmlNodeChangedEventArgs
    NewValue
    System.String))

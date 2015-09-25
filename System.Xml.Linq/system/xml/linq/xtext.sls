(library (system xml linq xtext)
  (export new
          is?
          xtext?
          write-to
          node-type
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Linq.XText a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XText a))
  (define (xtext? a) (clr-is System.Xml.Linq.XText a))
  (define-method-port
    write-to
    System.Xml.Linq.XText
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Linq.XText
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.Linq.XText
    Value
    System.String))

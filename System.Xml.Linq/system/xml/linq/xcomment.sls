(library (system xml linq xcomment)
  (export new
          is?
          xcomment?
          write-to
          node-type
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Linq.XComment a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XComment a))
  (define (xcomment? a) (clr-is System.Xml.Linq.XComment a))
  (define-method-port
    write-to
    System.Xml.Linq.XComment
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Linq.XComment
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.Linq.XComment
    Value
    System.String))

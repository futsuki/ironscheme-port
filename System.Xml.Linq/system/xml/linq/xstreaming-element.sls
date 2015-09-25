(library (system xml linq xstreaming-element)
  (export new
          is?
          xstreaming-element?
          save
          write-to
          add
          to-string
          name-get
          name-set!
          name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Linq.XStreamingElement a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XStreamingElement a))
  (define (xstreaming-element? a)
    (clr-is System.Xml.Linq.XStreamingElement a))
  (define-method-port
    save
    System.Xml.Linq.XStreamingElement
    Save
    (System.Void System.IO.TextWriter System.Xml.Linq.SaveOptions)
    (System.Void System.String System.Xml.Linq.SaveOptions)
    (System.Void System.Xml.XmlWriter)
    (System.Void System.IO.TextWriter)
    (System.Void System.String))
  (define-method-port
    write-to
    System.Xml.Linq.XStreamingElement
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    add
    System.Xml.Linq.XStreamingElement
    Add
    (System.Void System.Object[])
    (System.Void System.Object))
  (define-method-port
    to-string
    System.Xml.Linq.XStreamingElement
    ToString
    (System.String System.Xml.Linq.SaveOptions)
    (System.String))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Xml.Linq.XStreamingElement
    Name
    System.Xml.Linq.XName))

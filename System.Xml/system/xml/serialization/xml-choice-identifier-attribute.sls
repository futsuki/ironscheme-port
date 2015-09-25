(library (system xml serialization xml-choice-identifier-attribute)
  (export new
          is?
          xml-choice-identifier-attribute?
          member-name-get
          member-name-set!
          member-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlChoiceIdentifierAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlChoiceIdentifierAttribute a))
  (define (xml-choice-identifier-attribute? a)
    (clr-is System.Xml.Serialization.XmlChoiceIdentifierAttribute a))
  (define-field-port
    member-name-get
    member-name-set!
    member-name-update!
    (property:)
    System.Xml.Serialization.XmlChoiceIdentifierAttribute
    MemberName
    System.String))

(library (system xml xml-constructs)
  (export new
          is?
          xml-constructs?
          is-invalid?
          get-predefined-entity
          is-nm-token?
          is-valid?
          is-name-char?
          is-valid-ianaencoding?
          is-ncname-char?
          is-ncname-start?
          is-markup?
          is-valid-name
          is-whitespace?
          is-first-name-char?
          is-valid-ncname?
          is-name?
          is-ncname?
          is-content?
          is-pubid-char?
          is-valid-nmtoken?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlConstructs a ...)))))
  (define (is? a) (clr-is System.Xml.XmlConstructs a))
  (define (xml-constructs? a) (clr-is System.Xml.XmlConstructs a))
  (define-method-port
    is-invalid?
    System.Xml.XmlConstructs
    IsInvalid
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Char))
  (define-method-port
    get-predefined-entity
    System.Xml.XmlConstructs
    GetPredefinedEntity
    (static: System.Int32 System.String))
  (define-method-port
    is-nm-token?
    System.Xml.XmlConstructs
    IsNmToken
    (static: System.Boolean System.String))
  (define-method-port
    is-valid?
    System.Xml.XmlConstructs
    IsValid
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Char))
  (define-method-port
    is-name-char?
    System.Xml.XmlConstructs
    IsNameChar
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Char))
  (define-method-port
    is-valid-ianaencoding?
    System.Xml.XmlConstructs
    IsValidIANAEncoding
    (static: System.Boolean System.String))
  (define-method-port
    is-ncname-char?
    System.Xml.XmlConstructs
    IsNCNameChar
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Char))
  (define-method-port
    is-ncname-start?
    System.Xml.XmlConstructs
    IsNCNameStart
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Char))
  (define-method-port
    is-markup?
    System.Xml.XmlConstructs
    IsMarkup
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Char))
  (define-method-port
    is-valid-name
    System.Xml.XmlConstructs
    IsValidName
    (static: System.Int32 System.String)
    (static: System.Boolean System.String System.Exception&))
  (define-method-port
    is-whitespace?
    System.Xml.XmlConstructs
    IsWhitespace
    (static: System.Boolean System.String)
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Char))
  (define-method-port
    is-first-name-char?
    System.Xml.XmlConstructs
    IsFirstNameChar
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Char))
  (define-method-port
    is-valid-ncname?
    System.Xml.XmlConstructs
    IsValidNCName
    (static: System.Boolean System.String System.Exception&))
  (define-method-port
    is-name?
    System.Xml.XmlConstructs
    IsName
    (static: System.Boolean System.String))
  (define-method-port
    is-ncname?
    System.Xml.XmlConstructs
    IsNCName
    (static: System.Boolean System.String))
  (define-method-port
    is-content?
    System.Xml.XmlConstructs
    IsContent
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Char))
  (define-method-port
    is-pubid-char?
    System.Xml.XmlConstructs
    IsPubidChar
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Char))
  (define-method-port
    is-valid-nmtoken?
    System.Xml.XmlConstructs
    IsValidNmtoken
    (static: System.Boolean System.String System.Exception&)))

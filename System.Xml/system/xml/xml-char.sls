(library (system xml xml-char)
  (export new
          is?
          xml-char?
          is-invalid?
          get-predefined-entity
          is-nm-token?
          is-valid?
          index-of-non-whitespace
          is-name-char?
          is-valid-ianaencoding?
          is-ncname-char?
          is-whitespace?
          is-pubid?
          is-first-name-char?
          is-name?
          is-ncname?
          is-pubid-char?
          index-of-invalid
          whitespace-chars)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlChar a ...)))))
  (define (is? a) (clr-is System.Xml.XmlChar a))
  (define (xml-char? a) (clr-is System.Xml.XmlChar a))
  (define-method-port
    is-invalid?
    System.Xml.XmlChar
    IsInvalid
    (static: System.Boolean System.Int32))
  (define-method-port
    get-predefined-entity
    System.Xml.XmlChar
    GetPredefinedEntity
    (static: System.Int32 System.String))
  (define-method-port
    is-nm-token?
    System.Xml.XmlChar
    IsNmToken
    (static: System.Boolean System.String))
  (define-method-port
    is-valid?
    System.Xml.XmlChar
    IsValid
    (static: System.Boolean System.Int32))
  (define-method-port
    index-of-non-whitespace
    System.Xml.XmlChar
    IndexOfNonWhitespace
    (static: System.Int32 System.String))
  (define-method-port
    is-name-char?
    System.Xml.XmlChar
    IsNameChar
    (static: System.Boolean System.Int32))
  (define-method-port
    is-valid-ianaencoding?
    System.Xml.XmlChar
    IsValidIANAEncoding
    (static: System.Boolean System.String))
  (define-method-port
    is-ncname-char?
    System.Xml.XmlChar
    IsNCNameChar
    (static: System.Boolean System.Int32))
  (define-method-port
    is-whitespace?
    System.Xml.XmlChar
    IsWhitespace
    (static: System.Boolean System.String)
    (static: System.Boolean System.Int32))
  (define-method-port
    is-pubid?
    System.Xml.XmlChar
    IsPubid
    (static: System.Boolean System.String))
  (define-method-port
    is-first-name-char?
    System.Xml.XmlChar
    IsFirstNameChar
    (static: System.Boolean System.Int32))
  (define-method-port
    is-name?
    System.Xml.XmlChar
    IsName
    (static: System.Boolean System.String))
  (define-method-port
    is-ncname?
    System.Xml.XmlChar
    IsNCName
    (static: System.Boolean System.String))
  (define-method-port
    is-pubid-char?
    System.Xml.XmlChar
    IsPubidChar
    (static: System.Boolean System.Int32))
  (define-method-port
    index-of-invalid
    System.Xml.XmlChar
    IndexOfInvalid
    (static:
      System.Int32
      System.Char[]
      System.Int32
      System.Int32
      System.Boolean)
    (static: System.Int32 System.String System.Boolean))
  (define-field-port
    whitespace-chars
    #f
    #f
    (static:)
    System.Xml.XmlChar
    WhitespaceChars
    System.Char[]))

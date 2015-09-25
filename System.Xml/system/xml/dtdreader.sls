(library (system xml dtdreader)
  (export new
          is?
          dtdreader?
          has-line-info?
          base-uri
          normalization?-get
          normalization?-set!
          normalization?-update!
          line-number
          line-position)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.DTDReader a ...)))))
  (define (is? a) (clr-is System.Xml.DTDReader a))
  (define (dtdreader? a) (clr-is System.Xml.DTDReader a))
  (define-method-port
    has-line-info?
    System.Xml.DTDReader
    HasLineInfo
    (System.Boolean))
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    System.Xml.DTDReader
    BaseURI
    System.String)
  (define-field-port
    normalization?-get
    normalization?-set!
    normalization?-update!
    (property:)
    System.Xml.DTDReader
    Normalization
    System.Boolean)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Xml.DTDReader
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    System.Xml.DTDReader
    LinePosition
    System.Int32))

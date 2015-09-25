(library (mono xml xsl decimal-format-pattern)
  (export new
          is?
          decimal-format-pattern?
          format-number
          prefix-get
          prefix-set!
          prefix-update!
          suffix-get
          suffix-set!
          suffix-update!
          number-part-get
          number-part-set!
          number-part-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.DecimalFormatPattern a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.DecimalFormatPattern a))
  (define (decimal-format-pattern? a)
    (clr-is Mono.Xml.Xsl.DecimalFormatPattern a))
  (define-method-port
    format-number
    Mono.Xml.Xsl.DecimalFormatPattern
    FormatNumber
    (System.String System.Double))
  (define-field-port
    prefix-get
    prefix-set!
    prefix-update!
    ()
    Mono.Xml.Xsl.DecimalFormatPattern
    Prefix
    System.String)
  (define-field-port
    suffix-get
    suffix-set!
    suffix-update!
    ()
    Mono.Xml.Xsl.DecimalFormatPattern
    Suffix
    System.String)
  (define-field-port
    number-part-get
    number-part-set!
    number-part-update!
    ()
    Mono.Xml.Xsl.DecimalFormatPattern
    NumberPart
    System.String))

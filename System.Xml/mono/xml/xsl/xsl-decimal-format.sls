(library (mono xml xsl xsl-decimal-format)
  (export new
          is?
          xsl-decimal-format?
          format-number
          check-same-as
          default
          digit
          zero-digit
          info
          pattern-separator)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XslDecimalFormat a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslDecimalFormat a))
  (define (xsl-decimal-format? a)
    (clr-is Mono.Xml.Xsl.XslDecimalFormat a))
  (define-method-port
    format-number
    Mono.Xml.Xsl.XslDecimalFormat
    FormatNumber
    (System.String System.Double System.String))
  (define-method-port
    check-same-as
    Mono.Xml.Xsl.XslDecimalFormat
    CheckSameAs
    (System.Void Mono.Xml.Xsl.XslDecimalFormat))
  (define-field-port
    default
    #f
    #f
    (static:)
    Mono.Xml.Xsl.XslDecimalFormat
    Default
    Mono.Xml.Xsl.XslDecimalFormat)
  (define-field-port
    digit
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslDecimalFormat
    Digit
    System.Char)
  (define-field-port
    zero-digit
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslDecimalFormat
    ZeroDigit
    System.Char)
  (define-field-port
    info
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslDecimalFormat
    Info
    System.Globalization.NumberFormatInfo)
  (define-field-port
    pattern-separator
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslDecimalFormat
    PatternSeparator
    System.Char))

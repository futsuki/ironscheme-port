(library (system number-formatter)
  (export new
          is?
          number-formatter?
          format-exponential
          format-currency
          format-custom
          format-fixed-point
          format-number
          number-to-string
          format-percent
          current-culture)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.NumberFormatter a ...)))))
  (define (is? a) (clr-is System.NumberFormatter a))
  (define (number-formatter? a) (clr-is System.NumberFormatter a))
  (define-method-port
    format-exponential
    System.NumberFormatter
    FormatExponential
    (System.String System.Int32 System.Globalization.NumberFormatInfo))
  (define-method-port
    format-currency
    System.NumberFormatter
    FormatCurrency
    (System.String System.Int32 System.Globalization.NumberFormatInfo))
  (define-method-port
    format-custom
    System.NumberFormatter
    FormatCustom
    (System.String System.String System.Globalization.NumberFormatInfo))
  (define-method-port
    format-fixed-point
    System.NumberFormatter
    FormatFixedPoint
    (System.String System.Int32 System.Globalization.NumberFormatInfo))
  (define-method-port
    format-number
    System.NumberFormatter
    FormatNumber
    (System.String System.Int32 System.Globalization.NumberFormatInfo))
  (define-method-port
    number-to-string
    System.NumberFormatter
    NumberToString
    (static: System.String System.Double System.IFormatProvider)
    (static: System.String System.Single System.IFormatProvider)
    (static: System.String System.Int64 System.IFormatProvider)
    (static: System.String System.UInt64 System.IFormatProvider)
    (static: System.String System.Int32 System.IFormatProvider)
    (static: System.String System.UInt32 System.IFormatProvider)
    (static:
      System.String
      System.String
      System.Decimal
      System.IFormatProvider)
    (static:
      System.String
      System.String
      System.Double
      System.IFormatProvider)
    (static:
      System.String
      System.String
      System.Single
      System.IFormatProvider)
    (static:
      System.String
      System.String
      System.Int64
      System.IFormatProvider)
    (static:
      System.String
      System.String
      System.UInt64
      System.IFormatProvider)
    (static:
      System.String
      System.String
      System.Int32
      System.IFormatProvider)
    (static:
      System.String
      System.String
      System.UInt32
      System.IFormatProvider)
    (static:
      System.String
      System.String
      System.Int16
      System.IFormatProvider)
    (static:
      System.String
      System.String
      System.UInt16
      System.IFormatProvider)
    (static:
      System.String
      System.String
      System.Byte
      System.IFormatProvider)
    (static:
      System.String
      System.String
      System.SByte
      System.IFormatProvider))
  (define-method-port
    format-percent
    System.NumberFormatter
    FormatPercent
    (System.String System.Int32 System.Globalization.NumberFormatInfo))
  (define-field-port
    #f
    current-culture
    #f
    (property:)
    System.NumberFormatter
    CurrentCulture
    System.Globalization.CultureInfo))

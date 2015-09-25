(library (system globalization char-unicode-info)
  (export is?
          char-unicode-info?
          get-decimal-digit-value
          get-unicode-category
          get-digit-value
          get-numeric-value)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Globalization.CharUnicodeInfo a))
  (define (char-unicode-info? a)
    (clr-is System.Globalization.CharUnicodeInfo a))
  (define-method-port
    get-decimal-digit-value
    System.Globalization.CharUnicodeInfo
    GetDecimalDigitValue
    (static: System.Int32 System.String System.Int32)
    (static: System.Int32 System.Char))
  (define-method-port
    get-unicode-category
    System.Globalization.CharUnicodeInfo
    GetUnicodeCategory
    (static:
      System.Globalization.UnicodeCategory
      System.String
      System.Int32)
    (static: System.Globalization.UnicodeCategory System.Char))
  (define-method-port
    get-digit-value
    System.Globalization.CharUnicodeInfo
    GetDigitValue
    (static: System.Int32 System.String System.Int32)
    (static: System.Int32 System.Char))
  (define-method-port
    get-numeric-value
    System.Globalization.CharUnicodeInfo
    GetNumericValue
    (static: System.Double System.String System.Int32)
    (static: System.Double System.Char)))

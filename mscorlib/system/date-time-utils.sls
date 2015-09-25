(library (system date-time-utils)
  (export is?
          date-time-utils?
          count-repeat
          zero-pad
          parse-quoted-string
          to-string
          get-standard-pattern)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.DateTimeUtils a))
  (define (date-time-utils? a) (clr-is System.DateTimeUtils a))
  (define-method-port
    count-repeat
    System.DateTimeUtils
    CountRepeat
    (static: System.Int32 System.String System.Int32 System.Char))
  (define-method-port
    zero-pad
    System.DateTimeUtils
    ZeroPad
    (static:
      System.Void
      System.Text.StringBuilder
      System.Int32
      System.Int32))
  (define-method-port
    parse-quoted-string
    System.DateTimeUtils
    ParseQuotedString
    (static:
      System.Int32
      System.String
      System.Int32
      System.Text.StringBuilder))
  (define-method-port
    to-string
    System.DateTimeUtils
    ToString
    (static:
      System.String
      System.DateTime
      System.String
      System.Globalization.DateTimeFormatInfo))
  (define-method-port
    get-standard-pattern
    System.DateTimeUtils
    GetStandardPattern
    (static:
      System.String
      System.Char
      System.Globalization.DateTimeFormatInfo
      System.Boolean&
      System.Boolean&
      System.Boolean)
    (static:
      System.String
      System.Char
      System.Globalization.DateTimeFormatInfo
      System.Boolean&
      System.Boolean&)))

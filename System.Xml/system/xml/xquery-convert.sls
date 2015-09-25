(library (system xml xquery-convert)
  (export is?
          xquery-convert?
          string-to-gday
          gday-to-string
          string-to-unsigned-short
          string-to-gyear
          integer-to-string
          boolean-to-float
          non-positive-integer-to-string
          hex-binary-to-string
          date-time-to-gyear
          decimal-to-boolean?
          boolean-to-integer
          string-to-int
          date-time-to-date
          time-to-date-time
          gmonth-to-string
          string-to-date
          base64-binary-to-string
          date-time-to-gyear-month
          boolean-to-string
          double-to-string
          string-to-gyear-month
          date-time-to-time
          get-fallback-type
          string-to-boolean?
          gyear-to-string
          duration-to-string
          boolean-to-decimal
          date-to-string
          double-to-float
          date-to-date-time
          string-to-day-time-duration
          decimal-to-integer
          hex-binary-to-base64-binary
          decimal-to-int
          float-to-string
          int-to-string
          string-to-gmonth-day
          float-to-decimal
          int-to-float
          date-time-to-string
          string-to-base64-binary
          string-to-unsigned-long
          string-to-decimal
          decimal-to-string
          integer-to-int
          date-to-gyear
          integer-to-decimal
          string-to-integer
          date-time-to-gmonth-day
          year-month-duration-to-duration
          duration-to-day-time-duration
          string-to-any-uri
          boolean-to-double
          double-to-integer
          string-to-hex-binary
          string-to-date-time
          string-to-year-month-duration
          day-time-duration-to-duration
          duration-to-year-month-duration
          string-to-double
          date-to-gmonth-day
          integer-to-double
          int-to-decimal
          any-uri-to-string
          float-to-int
          int-to-boolean?
          date-time-to-gmonth
          float-to-double
          double-to-decimal
          date-to-gyear-month
          string-to-non-positive-integer
          string-to-non-negative-integer
          time-to-string
          boolean-to-int
          string-to-time
          string-to-duration
          decimal-to-double
          gyear-month-to-string
          int-to-double
          integer-to-boolean?
          float-to-boolean?
          year-month-duration-to-string
          day-time-duration-to-string
          double-to-int
          string-to-float
          date-to-gday
          base64-binary-to-hex-binary
          string-to-unsigned-int
          string-to-gmonth
          decimal-to-float
          date-to-gmonth
          int-to-integer
          integer-to-float
          date-time-to-gday
          float-to-integer
          double-to-boolean?
          non-negative-integer-to-string
          gmonth-day-to-string)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XQueryConvert a))
  (define (xquery-convert? a) (clr-is System.Xml.XQueryConvert a))
  (define-method-port
    string-to-gday
    System.Xml.XQueryConvert
    StringToGDay
    (static: System.DateTime System.String))
  (define-method-port
    gday-to-string
    System.Xml.XQueryConvert
    GDayToString
    (static: System.String System.DateTime))
  (define-method-port
    string-to-unsigned-short
    System.Xml.XQueryConvert
    StringToUnsignedShort
    (static: System.Int32 System.String))
  (define-method-port
    string-to-gyear
    System.Xml.XQueryConvert
    StringToGYear
    (static: System.DateTime System.String))
  (define-method-port
    integer-to-string
    System.Xml.XQueryConvert
    IntegerToString
    (static: System.String System.Int64))
  (define-method-port
    boolean-to-float
    System.Xml.XQueryConvert
    BooleanToFloat
    (static: System.Single System.Boolean))
  (define-method-port
    non-positive-integer-to-string
    System.Xml.XQueryConvert
    NonPositiveIntegerToString
    (static: System.String System.Decimal))
  (define-method-port
    hex-binary-to-string
    System.Xml.XQueryConvert
    HexBinaryToString
    (static: System.String System.Byte[]))
  (define-method-port
    date-time-to-gyear
    System.Xml.XQueryConvert
    DateTimeToGYear
    (static: System.DateTime System.DateTime))
  (define-method-port
    decimal-to-boolean?
    System.Xml.XQueryConvert
    DecimalToBoolean
    (static: System.Boolean System.Decimal))
  (define-method-port
    boolean-to-integer
    System.Xml.XQueryConvert
    BooleanToInteger
    (static: System.Int64 System.Boolean))
  (define-method-port
    string-to-int
    System.Xml.XQueryConvert
    StringToInt
    (static: System.Int32 System.String))
  (define-method-port
    date-time-to-date
    System.Xml.XQueryConvert
    DateTimeToDate
    (static: System.DateTime System.DateTime))
  (define-method-port
    time-to-date-time
    System.Xml.XQueryConvert
    TimeToDateTime
    (static: System.DateTime System.DateTime))
  (define-method-port
    gmonth-to-string
    System.Xml.XQueryConvert
    GMonthToString
    (static: System.String System.DateTime))
  (define-method-port
    string-to-date
    System.Xml.XQueryConvert
    StringToDate
    (static: System.DateTime System.String))
  (define-method-port
    base64-binary-to-string
    System.Xml.XQueryConvert
    Base64BinaryToString
    (static: System.String System.Byte[]))
  (define-method-port
    date-time-to-gyear-month
    System.Xml.XQueryConvert
    DateTimeToGYearMonth
    (static: System.DateTime System.DateTime))
  (define-method-port
    boolean-to-string
    System.Xml.XQueryConvert
    BooleanToString
    (static: System.String System.Boolean))
  (define-method-port
    double-to-string
    System.Xml.XQueryConvert
    DoubleToString
    (static: System.String System.Double))
  (define-method-port
    string-to-gyear-month
    System.Xml.XQueryConvert
    StringToGYearMonth
    (static: System.DateTime System.String))
  (define-method-port
    date-time-to-time
    System.Xml.XQueryConvert
    DateTimeToTime
    (static: System.DateTime System.DateTime))
  (define-method-port
    get-fallback-type
    System.Xml.XQueryConvert
    GetFallbackType
    (static:
      System.Xml.Schema.XmlTypeCode
      System.Xml.Schema.XmlTypeCode))
  (define-method-port
    string-to-boolean?
    System.Xml.XQueryConvert
    StringToBoolean
    (static: System.Boolean System.String))
  (define-method-port
    gyear-to-string
    System.Xml.XQueryConvert
    GYearToString
    (static: System.String System.DateTime))
  (define-method-port
    duration-to-string
    System.Xml.XQueryConvert
    DurationToString
    (static: System.String System.String))
  (define-method-port
    boolean-to-decimal
    System.Xml.XQueryConvert
    BooleanToDecimal
    (static: System.Decimal System.Boolean))
  (define-method-port
    date-to-string
    System.Xml.XQueryConvert
    DateToString
    (static: System.String System.DateTime))
  (define-method-port
    double-to-float
    System.Xml.XQueryConvert
    DoubleToFloat
    (static: System.Single System.Double))
  (define-method-port
    date-to-date-time
    System.Xml.XQueryConvert
    DateToDateTime
    (static: System.DateTime System.DateTime))
  (define-method-port
    string-to-day-time-duration
    System.Xml.XQueryConvert
    StringToDayTimeDuration
    (static: System.TimeSpan System.String))
  (define-method-port
    decimal-to-integer
    System.Xml.XQueryConvert
    DecimalToInteger
    (static: System.Int64 System.Decimal))
  (define-method-port
    hex-binary-to-base64-binary
    System.Xml.XQueryConvert
    HexBinaryToBase64Binary
    (static: System.Byte[] System.Byte[]))
  (define-method-port
    decimal-to-int
    System.Xml.XQueryConvert
    DecimalToInt
    (static: System.Int32 System.Decimal))
  (define-method-port
    float-to-string
    System.Xml.XQueryConvert
    FloatToString
    (static: System.String System.Single))
  (define-method-port
    int-to-string
    System.Xml.XQueryConvert
    IntToString
    (static: System.String System.Int32))
  (define-method-port
    string-to-gmonth-day
    System.Xml.XQueryConvert
    StringToGMonthDay
    (static: System.DateTime System.String))
  (define-method-port
    float-to-decimal
    System.Xml.XQueryConvert
    FloatToDecimal
    (static: System.Decimal System.Single))
  (define-method-port
    int-to-float
    System.Xml.XQueryConvert
    IntToFloat
    (static: System.Single System.Int32))
  (define-method-port
    date-time-to-string
    System.Xml.XQueryConvert
    DateTimeToString
    (static: System.String System.DateTime))
  (define-method-port
    string-to-base64-binary
    System.Xml.XQueryConvert
    StringToBase64Binary
    (static: System.Byte[] System.String))
  (define-method-port
    string-to-unsigned-long
    System.Xml.XQueryConvert
    StringToUnsignedLong
    (static: System.Decimal System.String))
  (define-method-port
    string-to-decimal
    System.Xml.XQueryConvert
    StringToDecimal
    (static: System.Decimal System.String))
  (define-method-port
    decimal-to-string
    System.Xml.XQueryConvert
    DecimalToString
    (static: System.String System.Decimal))
  (define-method-port
    integer-to-int
    System.Xml.XQueryConvert
    IntegerToInt
    (static: System.Int32 System.Int64))
  (define-method-port
    date-to-gyear
    System.Xml.XQueryConvert
    DateToGYear
    (static: System.DateTime System.DateTime))
  (define-method-port
    integer-to-decimal
    System.Xml.XQueryConvert
    IntegerToDecimal
    (static: System.Decimal System.Int64))
  (define-method-port
    string-to-integer
    System.Xml.XQueryConvert
    StringToInteger
    (static: System.Int64 System.String))
  (define-method-port
    date-time-to-gmonth-day
    System.Xml.XQueryConvert
    DateTimeToGMonthDay
    (static: System.DateTime System.DateTime))
  (define-method-port
    year-month-duration-to-duration
    System.Xml.XQueryConvert
    YearMonthDurationToDuration
    (static: System.String System.TimeSpan))
  (define-method-port
    duration-to-day-time-duration
    System.Xml.XQueryConvert
    DurationToDayTimeDuration
    (static: System.TimeSpan System.String))
  (define-method-port
    string-to-any-uri
    System.Xml.XQueryConvert
    StringToAnyUri
    (static: System.String System.String))
  (define-method-port
    boolean-to-double
    System.Xml.XQueryConvert
    BooleanToDouble
    (static: System.Double System.Boolean))
  (define-method-port
    double-to-integer
    System.Xml.XQueryConvert
    DoubleToInteger
    (static: System.Int64 System.Double))
  (define-method-port
    string-to-hex-binary
    System.Xml.XQueryConvert
    StringToHexBinary
    (static: System.Byte[] System.String))
  (define-method-port
    string-to-date-time
    System.Xml.XQueryConvert
    StringToDateTime
    (static: System.DateTime System.String))
  (define-method-port
    string-to-year-month-duration
    System.Xml.XQueryConvert
    StringToYearMonthDuration
    (static: System.TimeSpan System.String))
  (define-method-port
    day-time-duration-to-duration
    System.Xml.XQueryConvert
    DayTimeDurationToDuration
    (static: System.String System.TimeSpan))
  (define-method-port
    duration-to-year-month-duration
    System.Xml.XQueryConvert
    DurationToYearMonthDuration
    (static: System.TimeSpan System.String))
  (define-method-port
    string-to-double
    System.Xml.XQueryConvert
    StringToDouble
    (static: System.Double System.String))
  (define-method-port
    date-to-gmonth-day
    System.Xml.XQueryConvert
    DateToGMonthDay
    (static: System.DateTime System.DateTime))
  (define-method-port
    integer-to-double
    System.Xml.XQueryConvert
    IntegerToDouble
    (static: System.Double System.Int64))
  (define-method-port
    int-to-decimal
    System.Xml.XQueryConvert
    IntToDecimal
    (static: System.Decimal System.Int32))
  (define-method-port
    any-uri-to-string
    System.Xml.XQueryConvert
    AnyUriToString
    (static: System.String System.String))
  (define-method-port
    float-to-int
    System.Xml.XQueryConvert
    FloatToInt
    (static: System.Int32 System.Single))
  (define-method-port
    int-to-boolean?
    System.Xml.XQueryConvert
    IntToBoolean
    (static: System.Boolean System.Int32))
  (define-method-port
    date-time-to-gmonth
    System.Xml.XQueryConvert
    DateTimeToGMonth
    (static: System.DateTime System.DateTime))
  (define-method-port
    float-to-double
    System.Xml.XQueryConvert
    FloatToDouble
    (static: System.Double System.Single))
  (define-method-port
    double-to-decimal
    System.Xml.XQueryConvert
    DoubleToDecimal
    (static: System.Decimal System.Double))
  (define-method-port
    date-to-gyear-month
    System.Xml.XQueryConvert
    DateToGYearMonth
    (static: System.DateTime System.DateTime))
  (define-method-port
    string-to-non-positive-integer
    System.Xml.XQueryConvert
    StringToNonPositiveInteger
    (static: System.Decimal System.String))
  (define-method-port
    string-to-non-negative-integer
    System.Xml.XQueryConvert
    StringToNonNegativeInteger
    (static: System.Decimal System.String))
  (define-method-port
    time-to-string
    System.Xml.XQueryConvert
    TimeToString
    (static: System.String System.DateTime))
  (define-method-port
    boolean-to-int
    System.Xml.XQueryConvert
    BooleanToInt
    (static: System.Int32 System.Boolean))
  (define-method-port
    string-to-time
    System.Xml.XQueryConvert
    StringToTime
    (static: System.DateTime System.String))
  (define-method-port
    string-to-duration
    System.Xml.XQueryConvert
    StringToDuration
    (static: System.String System.String))
  (define-method-port
    decimal-to-double
    System.Xml.XQueryConvert
    DecimalToDouble
    (static: System.Double System.Decimal))
  (define-method-port
    gyear-month-to-string
    System.Xml.XQueryConvert
    GYearMonthToString
    (static: System.String System.DateTime))
  (define-method-port
    int-to-double
    System.Xml.XQueryConvert
    IntToDouble
    (static: System.Double System.Int32))
  (define-method-port
    integer-to-boolean?
    System.Xml.XQueryConvert
    IntegerToBoolean
    (static: System.Boolean System.Int64))
  (define-method-port
    float-to-boolean?
    System.Xml.XQueryConvert
    FloatToBoolean
    (static: System.Boolean System.Single))
  (define-method-port
    year-month-duration-to-string
    System.Xml.XQueryConvert
    YearMonthDurationToString
    (static: System.String System.TimeSpan))
  (define-method-port
    day-time-duration-to-string
    System.Xml.XQueryConvert
    DayTimeDurationToString
    (static: System.String System.TimeSpan))
  (define-method-port
    double-to-int
    System.Xml.XQueryConvert
    DoubleToInt
    (static: System.Int32 System.Double))
  (define-method-port
    string-to-float
    System.Xml.XQueryConvert
    StringToFloat
    (static: System.Single System.String))
  (define-method-port
    date-to-gday
    System.Xml.XQueryConvert
    DateToGDay
    (static: System.DateTime System.DateTime))
  (define-method-port
    base64-binary-to-hex-binary
    System.Xml.XQueryConvert
    Base64BinaryToHexBinary
    (static: System.Byte[] System.Byte[]))
  (define-method-port
    string-to-unsigned-int
    System.Xml.XQueryConvert
    StringToUnsignedInt
    (static: System.Int64 System.String))
  (define-method-port
    string-to-gmonth
    System.Xml.XQueryConvert
    StringToGMonth
    (static: System.DateTime System.String))
  (define-method-port
    decimal-to-float
    System.Xml.XQueryConvert
    DecimalToFloat
    (static: System.Single System.Decimal))
  (define-method-port
    date-to-gmonth
    System.Xml.XQueryConvert
    DateToGMonth
    (static: System.DateTime System.DateTime))
  (define-method-port
    int-to-integer
    System.Xml.XQueryConvert
    IntToInteger
    (static: System.Int64 System.Int32))
  (define-method-port
    integer-to-float
    System.Xml.XQueryConvert
    IntegerToFloat
    (static: System.Single System.Int64))
  (define-method-port
    date-time-to-gday
    System.Xml.XQueryConvert
    DateTimeToGDay
    (static: System.DateTime System.DateTime))
  (define-method-port
    float-to-integer
    System.Xml.XQueryConvert
    FloatToInteger
    (static: System.Int64 System.Single))
  (define-method-port
    double-to-boolean?
    System.Xml.XQueryConvert
    DoubleToBoolean
    (static: System.Boolean System.Double))
  (define-method-port
    non-negative-integer-to-string
    System.Xml.XQueryConvert
    NonNegativeIntegerToString
    (static: System.String System.Decimal))
  (define-method-port
    gmonth-day-to-string
    System.Xml.XQueryConvert
    GMonthDayToString
    (static: System.String System.DateTime)))

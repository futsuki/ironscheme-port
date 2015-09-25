(library (system xml xml-convert)
  (export new
          is?
          xml-convert?
          to-uint32
          encode-nm-token
          encode-name
          verify-nmtoken
          verify-ncname
          to-int32
          to-date-time
          to-uint16
          to-date-time-offset
          to-byte
          verify-name
          verify-token
          to-uint64
          to-int16
          to-guid
          to-double
          to-decimal
          to-int64
          to-single
          to-char
          decode-name
          to-sbyte
          to-string
          encode-local-name
          to-boolean?
          to-time-span)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlConvert a ...)))))
  (define (is? a) (clr-is System.Xml.XmlConvert a))
  (define (xml-convert? a) (clr-is System.Xml.XmlConvert a))
  (define-method-port
    to-uint32
    System.Xml.XmlConvert
    ToUInt32
    (static: System.UInt32 System.String))
  (define-method-port
    encode-nm-token
    System.Xml.XmlConvert
    EncodeNmToken
    (static: System.String System.String))
  (define-method-port
    encode-name
    System.Xml.XmlConvert
    EncodeName
    (static: System.String System.String))
  (define-method-port
    verify-nmtoken
    System.Xml.XmlConvert
    VerifyNMTOKEN
    (static: System.String System.String))
  (define-method-port
    verify-ncname
    System.Xml.XmlConvert
    VerifyNCName
    (static: System.String System.String))
  (define-method-port
    to-int32
    System.Xml.XmlConvert
    ToInt32
    (static: System.Int32 System.String))
  (define-method-port
    to-date-time
    System.Xml.XmlConvert
    ToDateTime
    (static: System.DateTime System.String System.String[])
    (static: System.DateTime System.String System.String)
    (static:
      System.DateTime
      System.String
      System.Xml.XmlDateTimeSerializationMode)
    (static: System.DateTime System.String))
  (define-method-port
    to-uint16
    System.Xml.XmlConvert
    ToUInt16
    (static: System.UInt16 System.String))
  (define-method-port
    to-date-time-offset
    System.Xml.XmlConvert
    ToDateTimeOffset
    (static: System.DateTimeOffset System.String System.String[])
    (static: System.DateTimeOffset System.String System.String)
    (static: System.DateTimeOffset System.String))
  (define-method-port
    to-byte
    System.Xml.XmlConvert
    ToByte
    (static: System.Byte System.String))
  (define-method-port
    verify-name
    System.Xml.XmlConvert
    VerifyName
    (static: System.String System.String))
  (define-method-port
    verify-token
    System.Xml.XmlConvert
    VerifyTOKEN
    (static: System.String System.String))
  (define-method-port
    to-uint64
    System.Xml.XmlConvert
    ToUInt64
    (static: System.UInt64 System.String))
  (define-method-port
    to-int16
    System.Xml.XmlConvert
    ToInt16
    (static: System.Int16 System.String))
  (define-method-port
    to-guid
    System.Xml.XmlConvert
    ToGuid
    (static: System.Guid System.String))
  (define-method-port
    to-double
    System.Xml.XmlConvert
    ToDouble
    (static: System.Double System.String))
  (define-method-port
    to-decimal
    System.Xml.XmlConvert
    ToDecimal
    (static: System.Decimal System.String))
  (define-method-port
    to-int64
    System.Xml.XmlConvert
    ToInt64
    (static: System.Int64 System.String))
  (define-method-port
    to-single
    System.Xml.XmlConvert
    ToSingle
    (static: System.Single System.String))
  (define-method-port
    to-char
    System.Xml.XmlConvert
    ToChar
    (static: System.Char System.String))
  (define-method-port
    decode-name
    System.Xml.XmlConvert
    DecodeName
    (static: System.String System.String))
  (define-method-port
    to-sbyte
    System.Xml.XmlConvert
    ToSByte
    (static: System.SByte System.String))
  (define-method-port
    to-string
    System.Xml.XmlConvert
    ToString
    (static: System.String System.DateTimeOffset System.String)
    (static: System.String System.DateTimeOffset)
    (static: System.String System.DateTime System.String)
    (static:
      System.String
      System.DateTime
      System.Xml.XmlDateTimeSerializationMode)
    (static: System.String System.DateTime)
    (static: System.String System.UInt16)
    (static: System.String System.UInt32)
    (static: System.String System.Single)
    (static: System.String System.Double)
    (static: System.String System.TimeSpan)
    (static: System.String System.UInt64)
    (static: System.String System.Decimal)
    (static: System.String System.SByte)
    (static: System.String System.Boolean)
    (static: System.String System.Char)
    (static: System.String System.Int64)
    (static: System.String System.Byte)
    (static: System.String System.Int16)
    (static: System.String System.Int32)
    (static: System.String System.Guid))
  (define-method-port
    encode-local-name
    System.Xml.XmlConvert
    EncodeLocalName
    (static: System.String System.String))
  (define-method-port
    to-boolean?
    System.Xml.XmlConvert
    ToBoolean
    (static: System.Boolean System.String))
  (define-method-port
    to-time-span
    System.Xml.XmlConvert
    ToTimeSpan
    (static: System.TimeSpan System.String)))

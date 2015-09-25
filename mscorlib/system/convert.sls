(library (system convert)
  (export is?
          convert?
          to-uint32
          to-double
          from-base64-char-array
          to-decimal
          to-int32
          to-date-time
          is-dbnull?
          to-byte
          to-uint64
          change-type
          to-int16
          to-int64
          to-uint16
          get-type-code
          to-single
          to-base64-string
          to-char
          to-base64-char-array
          from-base64-string
          to-string
          to-boolean?
          to-sbyte
          dbnull)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Convert a))
  (define (convert? a) (clr-is System.Convert a))
  (define-method-port
    to-uint32
    System.Convert
    ToUInt32
    (static: System.UInt32 System.Object System.IFormatProvider)
    (static: System.UInt32 System.Object)
    (static: System.UInt32 System.UInt16)
    (static: System.UInt32 System.UInt64)
    (static: System.UInt32 System.UInt32)
    (static: System.UInt32 System.String System.Int32)
    (static: System.UInt32 System.String System.IFormatProvider)
    (static: System.UInt32 System.String)
    (static: System.UInt32 System.Int16)
    (static: System.UInt32 System.SByte)
    (static: System.UInt32 System.Int64)
    (static: System.UInt32 System.Int32)
    (static: System.UInt32 System.Single)
    (static: System.UInt32 System.Double)
    (static: System.UInt32 System.Decimal)
    (static: System.UInt32 System.DateTime)
    (static: System.UInt32 System.Char)
    (static: System.UInt32 System.Byte)
    (static: System.UInt32 System.Boolean))
  (define-method-port
    to-double
    System.Convert
    ToDouble
    (static: System.Double System.Object System.IFormatProvider)
    (static: System.Double System.Object)
    (static: System.Double System.UInt16)
    (static: System.Double System.UInt64)
    (static: System.Double System.UInt32)
    (static: System.Double System.String System.IFormatProvider)
    (static: System.Double System.String)
    (static: System.Double System.Int16)
    (static: System.Double System.SByte)
    (static: System.Double System.Int64)
    (static: System.Double System.Int32)
    (static: System.Double System.Single)
    (static: System.Double System.Double)
    (static: System.Double System.Decimal)
    (static: System.Double System.DateTime)
    (static: System.Double System.Char)
    (static: System.Double System.Byte)
    (static: System.Double System.Boolean))
  (define-method-port
    from-base64-char-array
    System.Convert
    FromBase64CharArray
    (static: System.Byte[] System.Char[] System.Int32 System.Int32))
  (define-method-port
    to-decimal
    System.Convert
    ToDecimal
    (static: System.Decimal System.Object System.IFormatProvider)
    (static: System.Decimal System.Object)
    (static: System.Decimal System.UInt16)
    (static: System.Decimal System.UInt64)
    (static: System.Decimal System.UInt32)
    (static: System.Decimal System.String System.IFormatProvider)
    (static: System.Decimal System.String)
    (static: System.Decimal System.Int16)
    (static: System.Decimal System.SByte)
    (static: System.Decimal System.Int64)
    (static: System.Decimal System.Int32)
    (static: System.Decimal System.Single)
    (static: System.Decimal System.Double)
    (static: System.Decimal System.Decimal)
    (static: System.Decimal System.DateTime)
    (static: System.Decimal System.Char)
    (static: System.Decimal System.Byte)
    (static: System.Decimal System.Boolean))
  (define-method-port
    to-int32
    System.Convert
    ToInt32
    (static: System.Int32 System.Object System.IFormatProvider)
    (static: System.Int32 System.Object)
    (static: System.Int32 System.UInt16)
    (static: System.Int32 System.UInt64)
    (static: System.Int32 System.UInt32)
    (static: System.Int32 System.String System.Int32)
    (static: System.Int32 System.String System.IFormatProvider)
    (static: System.Int32 System.String)
    (static: System.Int32 System.Int16)
    (static: System.Int32 System.SByte)
    (static: System.Int32 System.Int64)
    (static: System.Int32 System.Int32)
    (static: System.Int32 System.Single)
    (static: System.Int32 System.Double)
    (static: System.Int32 System.Decimal)
    (static: System.Int32 System.DateTime)
    (static: System.Int32 System.Char)
    (static: System.Int32 System.Byte)
    (static: System.Int32 System.Boolean))
  (define-method-port
    to-date-time
    System.Convert
    ToDateTime
    (static: System.DateTime System.UInt64)
    (static: System.DateTime System.UInt32)
    (static: System.DateTime System.UInt16)
    (static: System.DateTime System.SByte)
    (static: System.DateTime System.Object System.IFormatProvider)
    (static: System.DateTime System.Object)
    (static: System.DateTime System.Single)
    (static: System.DateTime System.Int64)
    (static: System.DateTime System.Int32)
    (static: System.DateTime System.Int16)
    (static: System.DateTime System.Double)
    (static: System.DateTime System.Decimal)
    (static: System.DateTime System.DateTime)
    (static: System.DateTime System.Char)
    (static: System.DateTime System.Byte)
    (static: System.DateTime System.Boolean)
    (static: System.DateTime System.String System.IFormatProvider)
    (static: System.DateTime System.String))
  (define-method-port
    is-dbnull?
    System.Convert
    IsDBNull
    (static: System.Boolean System.Object))
  (define-method-port
    to-byte
    System.Convert
    ToByte
    (static: System.Byte System.Object System.IFormatProvider)
    (static: System.Byte System.Object)
    (static: System.Byte System.UInt16)
    (static: System.Byte System.UInt64)
    (static: System.Byte System.UInt32)
    (static: System.Byte System.String System.Int32)
    (static: System.Byte System.String System.IFormatProvider)
    (static: System.Byte System.String)
    (static: System.Byte System.Int16)
    (static: System.Byte System.SByte)
    (static: System.Byte System.Int64)
    (static: System.Byte System.Int32)
    (static: System.Byte System.Single)
    (static: System.Byte System.Double)
    (static: System.Byte System.Decimal)
    (static: System.Byte System.DateTime)
    (static: System.Byte System.Char)
    (static: System.Byte System.Byte)
    (static: System.Byte System.Boolean))
  (define-method-port
    to-uint64
    System.Convert
    ToUInt64
    (static: System.UInt64 System.Object System.IFormatProvider)
    (static: System.UInt64 System.Object)
    (static: System.UInt64 System.UInt16)
    (static: System.UInt64 System.UInt64)
    (static: System.UInt64 System.UInt32)
    (static: System.UInt64 System.String System.Int32)
    (static: System.UInt64 System.String System.IFormatProvider)
    (static: System.UInt64 System.String)
    (static: System.UInt64 System.Int16)
    (static: System.UInt64 System.SByte)
    (static: System.UInt64 System.Int64)
    (static: System.UInt64 System.Int32)
    (static: System.UInt64 System.Single)
    (static: System.UInt64 System.Double)
    (static: System.UInt64 System.Decimal)
    (static: System.UInt64 System.DateTime)
    (static: System.UInt64 System.Char)
    (static: System.UInt64 System.Byte)
    (static: System.UInt64 System.Boolean))
  (define-method-port
    change-type
    System.Convert
    ChangeType
    (static:
      System.Object
      System.Object
      System.TypeCode
      System.IFormatProvider)
    (static:
      System.Object
      System.Object
      System.Type
      System.IFormatProvider)
    (static: System.Object System.Object System.TypeCode)
    (static: System.Object System.Object System.Type))
  (define-method-port
    to-int16
    System.Convert
    ToInt16
    (static: System.Int16 System.Object System.IFormatProvider)
    (static: System.Int16 System.Object)
    (static: System.Int16 System.UInt16)
    (static: System.Int16 System.UInt64)
    (static: System.Int16 System.UInt32)
    (static: System.Int16 System.String System.Int32)
    (static: System.Int16 System.String System.IFormatProvider)
    (static: System.Int16 System.String)
    (static: System.Int16 System.Int16)
    (static: System.Int16 System.SByte)
    (static: System.Int16 System.Int64)
    (static: System.Int16 System.Int32)
    (static: System.Int16 System.Single)
    (static: System.Int16 System.Double)
    (static: System.Int16 System.Decimal)
    (static: System.Int16 System.DateTime)
    (static: System.Int16 System.Char)
    (static: System.Int16 System.Byte)
    (static: System.Int16 System.Boolean))
  (define-method-port
    to-int64
    System.Convert
    ToInt64
    (static: System.Int64 System.Object System.IFormatProvider)
    (static: System.Int64 System.Object)
    (static: System.Int64 System.UInt16)
    (static: System.Int64 System.UInt64)
    (static: System.Int64 System.UInt32)
    (static: System.Int64 System.String System.Int32)
    (static: System.Int64 System.String System.IFormatProvider)
    (static: System.Int64 System.String)
    (static: System.Int64 System.Int16)
    (static: System.Int64 System.SByte)
    (static: System.Int64 System.Int64)
    (static: System.Int64 System.Int32)
    (static: System.Int64 System.Single)
    (static: System.Int64 System.Double)
    (static: System.Int64 System.Decimal)
    (static: System.Int64 System.DateTime)
    (static: System.Int64 System.Char)
    (static: System.Int64 System.Byte)
    (static: System.Int64 System.Boolean))
  (define-method-port
    to-uint16
    System.Convert
    ToUInt16
    (static: System.UInt16 System.Object System.IFormatProvider)
    (static: System.UInt16 System.Object)
    (static: System.UInt16 System.UInt16)
    (static: System.UInt16 System.UInt64)
    (static: System.UInt16 System.UInt32)
    (static: System.UInt16 System.String System.Int32)
    (static: System.UInt16 System.String System.IFormatProvider)
    (static: System.UInt16 System.String)
    (static: System.UInt16 System.Int16)
    (static: System.UInt16 System.SByte)
    (static: System.UInt16 System.Int64)
    (static: System.UInt16 System.Int32)
    (static: System.UInt16 System.Single)
    (static: System.UInt16 System.Double)
    (static: System.UInt16 System.Decimal)
    (static: System.UInt16 System.DateTime)
    (static: System.UInt16 System.Char)
    (static: System.UInt16 System.Byte)
    (static: System.UInt16 System.Boolean))
  (define-method-port
    get-type-code
    System.Convert
    GetTypeCode
    (static: System.TypeCode System.Object))
  (define-method-port
    to-single
    System.Convert
    ToSingle
    (static: System.Single System.Object System.IFormatProvider)
    (static: System.Single System.Object)
    (static: System.Single System.UInt16)
    (static: System.Single System.UInt64)
    (static: System.Single System.UInt32)
    (static: System.Single System.String System.IFormatProvider)
    (static: System.Single System.String)
    (static: System.Single System.Int16)
    (static: System.Single System.SByte)
    (static: System.Single System.Int64)
    (static: System.Single System.Int32)
    (static: System.Single System.Single)
    (static: System.Single System.Double)
    (static: System.Single System.Decimal)
    (static: System.Single System.DateTime)
    (static: System.Single System.Char)
    (static: System.Single System.Byte)
    (static: System.Single System.Boolean))
  (define-method-port
    to-base64-string
    System.Convert
    ToBase64String
    (static:
      System.String
      System.Byte[]
      System.Int32
      System.Int32
      System.Base64FormattingOptions)
    (static: System.String System.Byte[] System.Base64FormattingOptions)
    (static: System.String System.Byte[] System.Int32 System.Int32)
    (static: System.String System.Byte[]))
  (define-method-port
    to-char
    System.Convert
    ToChar
    (static: System.Char System.Object System.IFormatProvider)
    (static: System.Char System.Object)
    (static: System.Char System.UInt16)
    (static: System.Char System.UInt64)
    (static: System.Char System.UInt32)
    (static: System.Char System.String System.IFormatProvider)
    (static: System.Char System.String)
    (static: System.Char System.Int16)
    (static: System.Char System.SByte)
    (static: System.Char System.Single)
    (static: System.Char System.Int64)
    (static: System.Char System.Int32)
    (static: System.Char System.Double)
    (static: System.Char System.Decimal)
    (static: System.Char System.DateTime)
    (static: System.Char System.Char)
    (static: System.Char System.Byte)
    (static: System.Char System.Boolean))
  (define-method-port
    to-base64-char-array
    System.Convert
    ToBase64CharArray
    (static:
      System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Char[]
      System.Int32
      System.Base64FormattingOptions)
    (static:
      System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Char[]
      System.Int32))
  (define-method-port
    from-base64-string
    System.Convert
    FromBase64String
    (static: System.Byte[] System.String))
  (define-method-port
    to-string
    System.Convert
    ToString
    (static: System.String System.UInt16 System.IFormatProvider)
    (static: System.String System.UInt16)
    (static: System.String System.UInt64 System.IFormatProvider)
    (static: System.String System.UInt64)
    (static: System.String System.UInt32 System.IFormatProvider)
    (static: System.String System.UInt32)
    (static: System.String System.String System.IFormatProvider)
    (static: System.String System.String)
    (static: System.String System.Int16 System.IFormatProvider)
    (static: System.String System.Int16 System.Int32)
    (static: System.String System.Int16)
    (static: System.String System.SByte System.IFormatProvider)
    (static: System.String System.SByte)
    (static: System.String System.Object System.IFormatProvider)
    (static: System.String System.Object)
    (static: System.String System.Int64 System.IFormatProvider)
    (static: System.String System.Int64 System.Int32)
    (static: System.String System.Int64)
    (static: System.String System.Int32 System.IFormatProvider)
    (static: System.String System.Int32 System.Int32)
    (static: System.String System.Int32)
    (static: System.String System.Single System.IFormatProvider)
    (static: System.String System.Single)
    (static: System.String System.Double System.IFormatProvider)
    (static: System.String System.Double)
    (static: System.String System.Decimal System.IFormatProvider)
    (static: System.String System.Decimal)
    (static: System.String System.DateTime System.IFormatProvider)
    (static: System.String System.DateTime)
    (static: System.String System.Char System.IFormatProvider)
    (static: System.String System.Char)
    (static: System.String System.Byte System.Int32)
    (static: System.String System.Byte System.IFormatProvider)
    (static: System.String System.Byte)
    (static: System.String System.Boolean System.IFormatProvider)
    (static: System.String System.Boolean))
  (define-method-port
    to-boolean?
    System.Convert
    ToBoolean
    (static: System.Boolean System.Object System.IFormatProvider)
    (static: System.Boolean System.Object)
    (static: System.Boolean System.UInt16)
    (static: System.Boolean System.UInt64)
    (static: System.Boolean System.UInt32)
    (static: System.Boolean System.String System.IFormatProvider)
    (static: System.Boolean System.String)
    (static: System.Boolean System.Int16)
    (static: System.Boolean System.SByte)
    (static: System.Boolean System.Int64)
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.Single)
    (static: System.Boolean System.Double)
    (static: System.Boolean System.Decimal)
    (static: System.Boolean System.DateTime)
    (static: System.Boolean System.Char)
    (static: System.Boolean System.Byte)
    (static: System.Boolean System.Boolean))
  (define-method-port
    to-sbyte
    System.Convert
    ToSByte
    (static: System.SByte System.Object System.IFormatProvider)
    (static: System.SByte System.Object)
    (static: System.SByte System.UInt16)
    (static: System.SByte System.UInt64)
    (static: System.SByte System.UInt32)
    (static: System.SByte System.String System.Int32)
    (static: System.SByte System.String System.IFormatProvider)
    (static: System.SByte System.String)
    (static: System.SByte System.Int16)
    (static: System.SByte System.SByte)
    (static: System.SByte System.Int64)
    (static: System.SByte System.Int32)
    (static: System.SByte System.Single)
    (static: System.SByte System.Double)
    (static: System.SByte System.Decimal)
    (static: System.SByte System.DateTime)
    (static: System.SByte System.Char)
    (static: System.SByte System.Byte)
    (static: System.SByte System.Boolean))
  (define-field-port
    dbnull
    #f
    #f
    (static:)
    System.Convert
    DBNull
    System.Object))

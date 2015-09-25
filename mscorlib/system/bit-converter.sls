(library (system bit-converter)
  (export is?
          bit-converter?
          to-uint64
          to-uint32
          to-double
          to-int32
          to-uint16
          int64-bits-to-double
          get-bytes
          to-int16
          to-int64
          to-single
          to-char
          double-to-int64-bits
          to-string
          to-boolean?
          is-little-endian?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.BitConverter a))
  (define (bit-converter? a) (clr-is System.BitConverter a))
  (define-method-port
    to-uint64
    System.BitConverter
    ToUInt64
    (static: System.UInt64 System.Byte[] System.Int32))
  (define-method-port
    to-uint32
    System.BitConverter
    ToUInt32
    (static: System.UInt32 System.Byte[] System.Int32))
  (define-method-port
    to-double
    System.BitConverter
    ToDouble
    (static: System.Double System.Byte[] System.Int32))
  (define-method-port
    to-int32
    System.BitConverter
    ToInt32
    (static: System.Int32 System.Byte[] System.Int32))
  (define-method-port
    to-uint16
    System.BitConverter
    ToUInt16
    (static: System.UInt16 System.Byte[] System.Int32))
  (define-method-port
    int64-bits-to-double
    System.BitConverter
    Int64BitsToDouble
    (static: System.Double System.Int64))
  (define-method-port
    get-bytes
    System.BitConverter
    GetBytes
    (static: System.Byte[] System.Double)
    (static: System.Byte[] System.Single)
    (static: System.Byte[] System.UInt64)
    (static: System.Byte[] System.UInt32)
    (static: System.Byte[] System.UInt16)
    (static: System.Byte[] System.Int64)
    (static: System.Byte[] System.Int32)
    (static: System.Byte[] System.Int16)
    (static: System.Byte[] System.Char)
    (static: System.Byte[] System.Boolean))
  (define-method-port
    to-int16
    System.BitConverter
    ToInt16
    (static: System.Int16 System.Byte[] System.Int32))
  (define-method-port
    to-int64
    System.BitConverter
    ToInt64
    (static: System.Int64 System.Byte[] System.Int32))
  (define-method-port
    to-single
    System.BitConverter
    ToSingle
    (static: System.Single System.Byte[] System.Int32))
  (define-method-port
    to-char
    System.BitConverter
    ToChar
    (static: System.Char System.Byte[] System.Int32))
  (define-method-port
    double-to-int64-bits
    System.BitConverter
    DoubleToInt64Bits
    (static: System.Int64 System.Double))
  (define-method-port
    to-string
    System.BitConverter
    ToString
    (static: System.String System.Byte[] System.Int32 System.Int32)
    (static: System.String System.Byte[] System.Int32)
    (static: System.String System.Byte[]))
  (define-method-port
    to-boolean?
    System.BitConverter
    ToBoolean
    (static: System.Boolean System.Byte[] System.Int32))
  (define-field-port
    is-little-endian?
    #f
    #f
    (static:)
    System.BitConverter
    IsLittleEndian
    System.Boolean))

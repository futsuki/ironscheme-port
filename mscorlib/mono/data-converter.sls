(library (mono data-converter)
  (export is?
          data-converter?
          pack-enumerable
          pack
          get-int16
          get-int64
          get-bytes
          get-uint32
          get-double
          get-float
          put-bytes
          get-uint16
          get-uint64
          unpack
          get-int32
          is-little-endian?
          little-endian
          big-endian
          native)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.DataConverter a))
  (define (data-converter? a) (clr-is Mono.DataConverter a))
  (define-method-port
    pack-enumerable
    Mono.DataConverter
    PackEnumerable
    (static:
      System.Byte[]
      System.String
      System.Collections.IEnumerable))
  (define-method-port
    pack
    Mono.DataConverter
    Pack
    (static: System.Byte[] System.String System.Object[]))
  (define-method-port
    get-int16
    Mono.DataConverter
    GetInt16
    (System.Int16 System.Byte[] System.Int32))
  (define-method-port
    get-int64
    Mono.DataConverter
    GetInt64
    (System.Int64 System.Byte[] System.Int32))
  (define-method-port
    get-bytes
    Mono.DataConverter
    GetBytes
    (System.Byte[] System.UInt64)
    (System.Byte[] System.UInt32)
    (System.Byte[] System.UInt16)
    (System.Byte[] System.Int16)
    (System.Byte[] System.Int64)
    (System.Byte[] System.Int32)
    (System.Byte[] System.Single)
    (System.Byte[] System.Double))
  (define-method-port
    get-uint32
    Mono.DataConverter
    GetUInt32
    (System.UInt32 System.Byte[] System.Int32))
  (define-method-port
    get-double
    Mono.DataConverter
    GetDouble
    (System.Double System.Byte[] System.Int32))
  (define-method-port
    get-float
    Mono.DataConverter
    GetFloat
    (System.Single System.Byte[] System.Int32))
  (define-method-port
    put-bytes
    Mono.DataConverter
    PutBytes
    (System.Void System.Byte[] System.Int32 System.UInt64)
    (System.Void System.Byte[] System.Int32 System.UInt32)
    (System.Void System.Byte[] System.Int32 System.UInt16)
    (System.Void System.Byte[] System.Int32 System.Int16)
    (System.Void System.Byte[] System.Int32 System.Int64)
    (System.Void System.Byte[] System.Int32 System.Int32)
    (System.Void System.Byte[] System.Int32 System.Single)
    (System.Void System.Byte[] System.Int32 System.Double))
  (define-method-port
    get-uint16
    Mono.DataConverter
    GetUInt16
    (System.UInt16 System.Byte[] System.Int32))
  (define-method-port
    get-uint64
    Mono.DataConverter
    GetUInt64
    (System.UInt64 System.Byte[] System.Int32))
  (define-method-port
    unpack
    Mono.DataConverter
    Unpack
    (static:
      System.Collections.IList
      System.String
      System.Byte[]
      System.Int32))
  (define-method-port
    get-int32
    Mono.DataConverter
    GetInt32
    (System.Int32 System.Byte[] System.Int32))
  (define-field-port
    is-little-endian?
    #f
    #f
    (static:)
    Mono.DataConverter
    IsLittleEndian
    System.Boolean)
  (define-field-port
    little-endian
    #f
    #f
    (static: property:)
    Mono.DataConverter
    LittleEndian
    Mono.DataConverter)
  (define-field-port
    big-endian
    #f
    #f
    (static: property:)
    Mono.DataConverter
    BigEndian
    Mono.DataConverter)
  (define-field-port
    native
    #f
    #f
    (static: property:)
    Mono.DataConverter
    Native
    Mono.DataConverter))

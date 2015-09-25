(library (system runtime serialization serialization-info)
  (export new
          is?
          serialization-info?
          get-single
          get-decimal
          get-boolean?
          get-int16
          get-string
          get-char
          get-uint32
          get-double
          get-enumerator
          get-int64
          get-uint16
          get-sbyte
          get-date-time
          add-value
          get-value
          get-uint64
          get-int32
          set-type
          get-byte
          assembly-name-get
          assembly-name-set!
          assembly-name-update!
          full-type-name-get
          full-type-name-set!
          full-type-name-update!
          member-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.SerializationInfo
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.SerializationInfo a))
  (define (serialization-info? a)
    (clr-is System.Runtime.Serialization.SerializationInfo a))
  (define-method-port
    get-single
    System.Runtime.Serialization.SerializationInfo
    GetSingle
    (System.Single System.String))
  (define-method-port
    get-decimal
    System.Runtime.Serialization.SerializationInfo
    GetDecimal
    (System.Decimal System.String))
  (define-method-port
    get-boolean?
    System.Runtime.Serialization.SerializationInfo
    GetBoolean
    (System.Boolean System.String))
  (define-method-port
    get-int16
    System.Runtime.Serialization.SerializationInfo
    GetInt16
    (System.Int16 System.String))
  (define-method-port
    get-string
    System.Runtime.Serialization.SerializationInfo
    GetString
    (System.String System.String))
  (define-method-port
    get-char
    System.Runtime.Serialization.SerializationInfo
    GetChar
    (System.Char System.String))
  (define-method-port
    get-uint32
    System.Runtime.Serialization.SerializationInfo
    GetUInt32
    (System.UInt32 System.String))
  (define-method-port
    get-double
    System.Runtime.Serialization.SerializationInfo
    GetDouble
    (System.Double System.String))
  (define-method-port
    get-enumerator
    System.Runtime.Serialization.SerializationInfo
    GetEnumerator
    (System.Runtime.Serialization.SerializationInfoEnumerator))
  (define-method-port
    get-int64
    System.Runtime.Serialization.SerializationInfo
    GetInt64
    (System.Int64 System.String))
  (define-method-port
    get-uint16
    System.Runtime.Serialization.SerializationInfo
    GetUInt16
    (System.UInt16 System.String))
  (define-method-port
    get-sbyte
    System.Runtime.Serialization.SerializationInfo
    GetSByte
    (System.SByte System.String))
  (define-method-port
    get-date-time
    System.Runtime.Serialization.SerializationInfo
    GetDateTime
    (System.DateTime System.String))
  (define-method-port
    add-value
    System.Runtime.Serialization.SerializationInfo
    AddValue
    (System.Void System.String System.Object)
    (System.Void System.String System.UInt64)
    (System.Void System.String System.Int64)
    (System.Void System.String System.UInt32)
    (System.Void System.String System.Single)
    (System.Void System.String System.DateTime)
    (System.Void System.String System.Decimal)
    (System.Void System.String System.Double)
    (System.Void System.String System.SByte)
    (System.Void System.String System.Char)
    (System.Void System.String System.Boolean)
    (System.Void System.String System.Byte)
    (System.Void System.String System.Int32)
    (System.Void System.String System.UInt16)
    (System.Void System.String System.Int16)
    (System.Void System.String System.Object System.Type))
  (define-method-port
    get-value
    System.Runtime.Serialization.SerializationInfo
    GetValue
    (System.Object System.String System.Type))
  (define-method-port
    get-uint64
    System.Runtime.Serialization.SerializationInfo
    GetUInt64
    (System.UInt64 System.String))
  (define-method-port
    get-int32
    System.Runtime.Serialization.SerializationInfo
    GetInt32
    (System.Int32 System.String))
  (define-method-port
    set-type
    System.Runtime.Serialization.SerializationInfo
    SetType
    (System.Void System.Type))
  (define-method-port
    get-byte
    System.Runtime.Serialization.SerializationInfo
    GetByte
    (System.Byte System.String))
  (define-field-port
    assembly-name-get
    assembly-name-set!
    assembly-name-update!
    (property:)
    System.Runtime.Serialization.SerializationInfo
    AssemblyName
    System.String)
  (define-field-port
    full-type-name-get
    full-type-name-set!
    full-type-name-update!
    (property:)
    System.Runtime.Serialization.SerializationInfo
    FullTypeName
    System.String)
  (define-field-port
    member-count
    #f
    #f
    (property:)
    System.Runtime.Serialization.SerializationInfo
    MemberCount
    System.Int32))

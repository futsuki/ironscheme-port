(library (system data sql-types sql-bytes)
  (export new
          is?
          sql-bytes?
          read
          get-xsd-type
          set-null
          write
          set-length
          to-sql-binary
          buffer
          is-null?
          item-get
          item-set!
          item-update!
          length
          max-length
          null
          storage
          stream-get
          stream-set!
          stream-update!
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.SqlTypes.SqlBytes a ...)))))
  (define (is? a) (clr-is System.Data.SqlTypes.SqlBytes a))
  (define (sql-bytes? a) (clr-is System.Data.SqlTypes.SqlBytes a))
  (define-method-port
    read
    System.Data.SqlTypes.SqlBytes
    Read
    (System.Int64 System.Int64 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-xsd-type
    System.Data.SqlTypes.SqlBytes
    GetXsdType
    (static:
      System.Xml.XmlQualifiedName
      System.Xml.Schema.XmlSchemaSet))
  (define-method-port
    set-null
    System.Data.SqlTypes.SqlBytes
    SetNull
    (System.Void))
  (define-method-port
    write
    System.Data.SqlTypes.SqlBytes
    Write
    (System.Void System.Int64 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    set-length
    System.Data.SqlTypes.SqlBytes
    SetLength
    (System.Void System.Int64))
  (define-method-port
    to-sql-binary
    System.Data.SqlTypes.SqlBytes
    ToSqlBinary
    (System.Data.SqlTypes.SqlBinary))
  (define-field-port
    buffer
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlBytes
    Buffer
    System.Byte[])
  (define-field-port
    is-null?
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlBytes
    IsNull
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.SqlTypes.SqlBytes
    Item
    System.Byte)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlBytes
    Length
    System.Int64)
  (define-field-port
    max-length
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlBytes
    MaxLength
    System.Int64)
  (define-field-port
    null
    #f
    #f
    (static: property:)
    System.Data.SqlTypes.SqlBytes
    Null
    System.Data.SqlTypes.SqlBytes)
  (define-field-port
    storage
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlBytes
    Storage
    System.Data.SqlTypes.StorageState)
  (define-field-port
    stream-get
    stream-set!
    stream-update!
    (property:)
    System.Data.SqlTypes.SqlBytes
    Stream
    System.IO.Stream)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlBytes
    Value
    System.Byte[]))

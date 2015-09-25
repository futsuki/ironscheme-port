(library (system data sql-types sql-chars)
  (export new
          is?
          sql-chars?
          read
          get-xsd-type
          set-null
          write
          set-length
          to-sql-string
          buffer
          is-null?
          item-get
          item-set!
          item-update!
          length
          max-length
          null
          storage
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.SqlTypes.SqlChars a ...)))))
  (define (is? a) (clr-is System.Data.SqlTypes.SqlChars a))
  (define (sql-chars? a) (clr-is System.Data.SqlTypes.SqlChars a))
  (define-method-port
    read
    System.Data.SqlTypes.SqlChars
    Read
    (System.Int64 System.Int64 System.Char[] System.Int32 System.Int32))
  (define-method-port
    get-xsd-type
    System.Data.SqlTypes.SqlChars
    GetXsdType
    (static:
      System.Xml.XmlQualifiedName
      System.Xml.Schema.XmlSchemaSet))
  (define-method-port
    set-null
    System.Data.SqlTypes.SqlChars
    SetNull
    (System.Void))
  (define-method-port
    write
    System.Data.SqlTypes.SqlChars
    Write
    (System.Void System.Int64 System.Char[] System.Int32 System.Int32))
  (define-method-port
    set-length
    System.Data.SqlTypes.SqlChars
    SetLength
    (System.Void System.Int64))
  (define-method-port
    to-sql-string
    System.Data.SqlTypes.SqlChars
    ToSqlString
    (System.Data.SqlTypes.SqlString))
  (define-field-port
    buffer
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlChars
    Buffer
    System.Char[])
  (define-field-port
    is-null?
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlChars
    IsNull
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.SqlTypes.SqlChars
    Item
    System.Char)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlChars
    Length
    System.Int64)
  (define-field-port
    max-length
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlChars
    MaxLength
    System.Int64)
  (define-field-port
    null
    #f
    #f
    (static: property:)
    System.Data.SqlTypes.SqlChars
    Null
    System.Data.SqlTypes.SqlChars)
  (define-field-port
    storage
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlChars
    Storage
    System.Data.SqlTypes.StorageState)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Data.SqlTypes.SqlChars
    Value
    System.Char[]))

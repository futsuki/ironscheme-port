(library (system dbnull)
  (export is? dbnull? get-object-data get-type-code to-string value)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.DBNull a))
  (define (dbnull? a) (clr-is System.DBNull a))
  (define-method-port
    get-object-data
    System.DBNull
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-type-code
    System.DBNull
    GetTypeCode
    (System.TypeCode))
  (define-method-port
    to-string
    System.DBNull
    ToString
    (System.String System.IFormatProvider)
    (System.String))
  (define-field-port
    value
    #f
    #f
    (static:)
    System.DBNull
    Value
    System.DBNull))

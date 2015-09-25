(library (system data ole-db ole-db-exception)
  (export is?
          ole-db-exception?
          get-object-data
          error-code
          errors
          message
          source)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.OleDb.OleDbException a))
  (define (ole-db-exception? a)
    (clr-is System.Data.OleDb.OleDbException a))
  (define-method-port
    get-object-data
    System.Data.OleDb.OleDbException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    error-code
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbException
    ErrorCode
    System.Int32)
  (define-field-port
    errors
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbException
    Errors
    System.Data.OleDb.OleDbErrorCollection)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbException
    Message
    System.String)
  (define-field-port
    source
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbException
    Source
    System.String))

(library (system data ole-db ole-db-info-message-event-args)
  (export is?
          ole-db-info-message-event-args?
          to-string
          error-code
          errors
          message
          source)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Data.OleDb.OleDbInfoMessageEventArgs a))
  (define (ole-db-info-message-event-args? a)
    (clr-is System.Data.OleDb.OleDbInfoMessageEventArgs a))
  (define-method-port
    to-string
    System.Data.OleDb.OleDbInfoMessageEventArgs
    ToString
    (System.String))
  (define-field-port
    error-code
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbInfoMessageEventArgs
    ErrorCode
    System.Int32)
  (define-field-port
    errors
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbInfoMessageEventArgs
    Errors
    System.Data.OleDb.OleDbErrorCollection)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbInfoMessageEventArgs
    Message
    System.String)
  (define-field-port
    source
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbInfoMessageEventArgs
    Source
    System.String))

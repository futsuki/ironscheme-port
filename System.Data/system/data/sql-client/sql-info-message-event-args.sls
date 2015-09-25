(library (system data sql-client sql-info-message-event-args)
  (export is?
          sql-info-message-event-args?
          to-string
          errors
          message
          source)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlInfoMessageEventArgs a))
  (define (sql-info-message-event-args? a)
    (clr-is System.Data.SqlClient.SqlInfoMessageEventArgs a))
  (define-method-port
    to-string
    System.Data.SqlClient.SqlInfoMessageEventArgs
    ToString
    (System.String))
  (define-field-port
    errors
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlInfoMessageEventArgs
    Errors
    System.Data.SqlClient.SqlErrorCollection)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlInfoMessageEventArgs
    Message
    System.String)
  (define-field-port
    source
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlInfoMessageEventArgs
    Source
    System.String))

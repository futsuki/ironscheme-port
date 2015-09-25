(library (system data odbc odbc-info-message-event-args)
  (export is? odbc-info-message-event-args? to-string errors message)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Odbc.OdbcInfoMessageEventArgs a))
  (define (odbc-info-message-event-args? a)
    (clr-is System.Data.Odbc.OdbcInfoMessageEventArgs a))
  (define-method-port
    to-string
    System.Data.Odbc.OdbcInfoMessageEventArgs
    ToString
    (System.String))
  (define-field-port
    errors
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcInfoMessageEventArgs
    Errors
    System.Data.Odbc.OdbcErrorCollection)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcInfoMessageEventArgs
    Message
    System.String))

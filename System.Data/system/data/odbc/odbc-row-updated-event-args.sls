(library (system data odbc odbc-row-updated-event-args)
  (export new is? odbc-row-updated-event-args? command)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Odbc.OdbcRowUpdatedEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcRowUpdatedEventArgs a))
  (define (odbc-row-updated-event-args? a)
    (clr-is System.Data.Odbc.OdbcRowUpdatedEventArgs a))
  (define-field-port
    command
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcRowUpdatedEventArgs
    Command
    System.Data.Odbc.OdbcCommand))

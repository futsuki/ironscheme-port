(library (system data sql-client sql-row-updated-event-args)
  (export new is? sql-row-updated-event-args? command)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlClient.SqlRowUpdatedEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlRowUpdatedEventArgs a))
  (define (sql-row-updated-event-args? a)
    (clr-is System.Data.SqlClient.SqlRowUpdatedEventArgs a))
  (define-field-port
    command
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlRowUpdatedEventArgs
    Command
    System.Data.SqlClient.SqlCommand))

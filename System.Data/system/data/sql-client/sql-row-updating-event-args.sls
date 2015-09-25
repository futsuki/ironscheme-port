(library (system data sql-client sql-row-updating-event-args)
  (export new
          is?
          sql-row-updating-event-args?
          command-get
          command-set!
          command-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlClient.SqlRowUpdatingEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlRowUpdatingEventArgs a))
  (define (sql-row-updating-event-args? a)
    (clr-is System.Data.SqlClient.SqlRowUpdatingEventArgs a))
  (define-field-port
    command-get
    command-set!
    command-update!
    (property:)
    System.Data.SqlClient.SqlRowUpdatingEventArgs
    Command
    System.Data.SqlClient.SqlCommand))

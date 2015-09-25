(library (system data odbc odbc-row-updating-event-args)
  (export new
          is?
          odbc-row-updating-event-args?
          command-get
          command-set!
          command-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Odbc.OdbcRowUpdatingEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcRowUpdatingEventArgs a))
  (define (odbc-row-updating-event-args? a)
    (clr-is System.Data.Odbc.OdbcRowUpdatingEventArgs a))
  (define-field-port
    command-get
    command-set!
    command-update!
    (property:)
    System.Data.Odbc.OdbcRowUpdatingEventArgs
    Command
    System.Data.Odbc.OdbcCommand))

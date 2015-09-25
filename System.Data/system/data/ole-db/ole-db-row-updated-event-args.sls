(library (system data ole-db ole-db-row-updated-event-args)
  (export new is? ole-db-row-updated-event-args? command)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.OleDb.OleDbRowUpdatedEventArgs
             a
             ...)))))
  (define (is? a) (clr-is System.Data.OleDb.OleDbRowUpdatedEventArgs a))
  (define (ole-db-row-updated-event-args? a)
    (clr-is System.Data.OleDb.OleDbRowUpdatedEventArgs a))
  (define-field-port
    command
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbRowUpdatedEventArgs
    Command
    System.Data.OleDb.OleDbCommand))

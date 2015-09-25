(library (system data ole-db ole-db-row-updating-event-args)
  (export new
          is?
          ole-db-row-updating-event-args?
          command-get
          command-set!
          command-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.OleDb.OleDbRowUpdatingEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.OleDb.OleDbRowUpdatingEventArgs a))
  (define (ole-db-row-updating-event-args? a)
    (clr-is System.Data.OleDb.OleDbRowUpdatingEventArgs a))
  (define-field-port
    command-get
    command-set!
    command-update!
    (property:)
    System.Data.OleDb.OleDbRowUpdatingEventArgs
    Command
    System.Data.OleDb.OleDbCommand))

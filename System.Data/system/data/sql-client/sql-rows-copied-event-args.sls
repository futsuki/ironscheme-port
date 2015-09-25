(library (system data sql-client sql-rows-copied-event-args)
  (export new
          is?
          sql-rows-copied-event-args?
          abort?-get
          abort?-set!
          abort?-update!
          rows-copied)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlClient.SqlRowsCopiedEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlRowsCopiedEventArgs a))
  (define (sql-rows-copied-event-args? a)
    (clr-is System.Data.SqlClient.SqlRowsCopiedEventArgs a))
  (define-field-port
    abort?-get
    abort?-set!
    abort?-update!
    (property:)
    System.Data.SqlClient.SqlRowsCopiedEventArgs
    Abort
    System.Boolean)
  (define-field-port
    rows-copied
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlRowsCopiedEventArgs
    RowsCopied
    System.Int64))

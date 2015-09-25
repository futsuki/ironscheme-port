(library (system data sql-client sql-async-state)
  (export new
          is?
          sql-async-state?
          user-state-get
          user-state-set!
          user-state-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SqlAsyncState a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SqlAsyncState a))
  (define (sql-async-state? a)
    (clr-is System.Data.SqlClient.SqlAsyncState a))
  (define-field-port
    user-state-get
    user-state-set!
    user-state-update!
    (property:)
    System.Data.SqlClient.SqlAsyncState
    UserState
    System.Object))

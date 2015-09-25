(library (system data sql sql-notification-request)
  (export new
          is?
          sql-notification-request?
          user-data-get
          user-data-set!
          user-data-update!
          options-get
          options-set!
          options-update!
          timeout-get
          timeout-set!
          timeout-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Sql.SqlNotificationRequest a ...)))))
  (define (is? a) (clr-is System.Data.Sql.SqlNotificationRequest a))
  (define (sql-notification-request? a)
    (clr-is System.Data.Sql.SqlNotificationRequest a))
  (define-field-port
    user-data-get
    user-data-set!
    user-data-update!
    (property:)
    System.Data.Sql.SqlNotificationRequest
    UserData
    System.String)
  (define-field-port
    options-get
    options-set!
    options-update!
    (property:)
    System.Data.Sql.SqlNotificationRequest
    Options
    System.String)
  (define-field-port
    timeout-get
    timeout-set!
    timeout-update!
    (property:)
    System.Data.Sql.SqlNotificationRequest
    Timeout
    System.Int32))

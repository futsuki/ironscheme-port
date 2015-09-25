(library (system data sql-client sql-notification-event-args)
  (export new is? sql-notification-event-args? type info source)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlClient.SqlNotificationEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlNotificationEventArgs a))
  (define (sql-notification-event-args? a)
    (clr-is System.Data.SqlClient.SqlNotificationEventArgs a))
  (define-field-port
    type
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlNotificationEventArgs
    Type
    System.Data.SqlClient.SqlNotificationType)
  (define-field-port
    info
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlNotificationEventArgs
    Info
    System.Data.SqlClient.SqlNotificationInfo)
  (define-field-port
    source
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlNotificationEventArgs
    Source
    System.Data.SqlClient.SqlNotificationSource))

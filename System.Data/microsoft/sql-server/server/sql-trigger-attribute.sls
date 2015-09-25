(library (microsoft sql-server server sql-trigger-attribute)
  (export new
          is?
          sql-trigger-attribute?
          event-get
          event-set!
          event-update!
          name-get
          name-set!
          name-update!
          target-get
          target-set!
          target-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.SqlServer.Server.SqlTriggerAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is Microsoft.SqlServer.Server.SqlTriggerAttribute a))
  (define (sql-trigger-attribute? a)
    (clr-is Microsoft.SqlServer.Server.SqlTriggerAttribute a))
  (define-field-port
    event-get
    event-set!
    event-update!
    (property:)
    Microsoft.SqlServer.Server.SqlTriggerAttribute
    Event
    System.String)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    Microsoft.SqlServer.Server.SqlTriggerAttribute
    Name
    System.String)
  (define-field-port
    target-get
    target-set!
    target-update!
    (property:)
    Microsoft.SqlServer.Server.SqlTriggerAttribute
    Target
    System.String))

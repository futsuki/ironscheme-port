(library (system enterprise-services application-queuing-attribute)
  (export new
          is?
          application-queuing-attribute?
          enabled?-get
          enabled?-set!
          enabled?-update!
          max-listener-threads-get
          max-listener-threads-set!
          max-listener-threads-update!
          queue-listener-enabled?-get
          queue-listener-enabled?-set!
          queue-listener-enabled?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ApplicationQueuingAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.ApplicationQueuingAttribute a))
  (define (application-queuing-attribute? a)
    (clr-is System.EnterpriseServices.ApplicationQueuingAttribute a))
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.EnterpriseServices.ApplicationQueuingAttribute
    Enabled
    System.Boolean)
  (define-field-port
    max-listener-threads-get
    max-listener-threads-set!
    max-listener-threads-update!
    (property:)
    System.EnterpriseServices.ApplicationQueuingAttribute
    MaxListenerThreads
    System.Int32)
  (define-field-port
    queue-listener-enabled?-get
    queue-listener-enabled?-set!
    queue-listener-enabled?-update!
    (property:)
    System.EnterpriseServices.ApplicationQueuingAttribute
    QueueListenerEnabled
    System.Boolean))

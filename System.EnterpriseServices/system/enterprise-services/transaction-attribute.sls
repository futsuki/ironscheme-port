(library (system enterprise-services transaction-attribute)
  (export new
          is?
          transaction-attribute?
          isolation-get
          isolation-set!
          isolation-update!
          timeout-get
          timeout-set!
          timeout-update!
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.TransactionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.TransactionAttribute a))
  (define (transaction-attribute? a)
    (clr-is System.EnterpriseServices.TransactionAttribute a))
  (define-field-port
    isolation-get
    isolation-set!
    isolation-update!
    (property:)
    System.EnterpriseServices.TransactionAttribute
    Isolation
    System.EnterpriseServices.TransactionIsolationLevel)
  (define-field-port
    timeout-get
    timeout-set!
    timeout-update!
    (property:)
    System.EnterpriseServices.TransactionAttribute
    Timeout
    System.Int32)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.EnterpriseServices.TransactionAttribute
    Value
    System.EnterpriseServices.TransactionOption))

(library (system
          enterprise-services
          compensating-resource-manager
          clerk)
  (export new
          is?
          clerk?
          write-log-record
          force-log
          forget-log-record
          force-transaction-to-abort
          log-record-count
          transaction-uow)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.CompensatingResourceManager.Clerk
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.EnterpriseServices.CompensatingResourceManager.Clerk
      a))
  (define (clerk? a)
    (clr-is
      System.EnterpriseServices.CompensatingResourceManager.Clerk
      a))
  (define-method-port
    write-log-record
    System.EnterpriseServices.CompensatingResourceManager.Clerk
    WriteLogRecord
    (System.Void System.Object))
  (define-method-port
    force-log
    System.EnterpriseServices.CompensatingResourceManager.Clerk
    ForceLog
    (System.Void))
  (define-method-port
    forget-log-record
    System.EnterpriseServices.CompensatingResourceManager.Clerk
    ForgetLogRecord
    (System.Void))
  (define-method-port
    force-transaction-to-abort
    System.EnterpriseServices.CompensatingResourceManager.Clerk
    ForceTransactionToAbort
    (System.Void))
  (define-field-port
    log-record-count
    #f
    #f
    (property:)
    System.EnterpriseServices.CompensatingResourceManager.Clerk
    LogRecordCount
    System.Int32)
  (define-field-port
    transaction-uow
    #f
    #f
    (property:)
    System.EnterpriseServices.CompensatingResourceManager.Clerk
    TransactionUOW
    System.String))

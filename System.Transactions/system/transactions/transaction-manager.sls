(library (system transactions transaction-manager)
  (export is?
          transaction-manager?
          recovery-complete
          reenlist
          default-timeout
          host-current-callback-get
          host-current-callback-set!
          host-current-callback-update!
          maximum-timeout)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Transactions.TransactionManager a))
  (define (transaction-manager? a)
    (clr-is System.Transactions.TransactionManager a))
  (define-method-port
    recovery-complete
    System.Transactions.TransactionManager
    RecoveryComplete
    (static: System.Void System.Guid))
  (define-method-port
    reenlist
    System.Transactions.TransactionManager
    Reenlist
    (static:
      System.Transactions.Enlistment
      System.Guid
      System.Byte[]
      System.Transactions.IEnlistmentNotification))
  (define-field-port
    default-timeout
    #f
    #f
    (static: property:)
    System.Transactions.TransactionManager
    DefaultTimeout
    System.TimeSpan)
  (define-field-port
    host-current-callback-get
    host-current-callback-set!
    host-current-callback-update!
    (static: property:)
    System.Transactions.TransactionManager
    HostCurrentCallback
    System.Transactions.HostCurrentTransactionCallback)
  (define-field-port
    maximum-timeout
    #f
    #f
    (static: property:)
    System.Transactions.TransactionManager
    MaximumTimeout
    System.TimeSpan))

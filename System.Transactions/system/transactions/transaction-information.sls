(library (system transactions transaction-information)
  (export is?
          transaction-information?
          creation-time
          distributed-identifier
          local-identifier
          status)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Transactions.TransactionInformation a))
  (define (transaction-information? a)
    (clr-is System.Transactions.TransactionInformation a))
  (define-field-port
    creation-time
    #f
    #f
    (property:)
    System.Transactions.TransactionInformation
    CreationTime
    System.DateTime)
  (define-field-port
    distributed-identifier
    #f
    #f
    (property:)
    System.Transactions.TransactionInformation
    DistributedIdentifier
    System.Guid)
  (define-field-port
    local-identifier
    #f
    #f
    (property:)
    System.Transactions.TransactionInformation
    LocalIdentifier
    System.String)
  (define-field-port
    status
    #f
    #f
    (property:)
    System.Transactions.TransactionInformation
    Status
    System.Transactions.TransactionStatus))

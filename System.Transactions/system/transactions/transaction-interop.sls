(library (system transactions transaction-interop)
  (export is?
          transaction-interop?
          get-transaction-from-dtc-transaction
          get-export-cookie
          get-transmitter-propagation-token
          get-transaction-from-transmitter-propagation-token
          get-dtc-transaction
          get-whereabouts
          get-transaction-from-export-cookie)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Transactions.TransactionInterop a))
  (define (transaction-interop? a)
    (clr-is System.Transactions.TransactionInterop a))
  (define-method-port
    get-transaction-from-dtc-transaction
    System.Transactions.TransactionInterop
    GetTransactionFromDtcTransaction
    (static:
      System.Transactions.Transaction
      System.Transactions.IDtcTransaction))
  (define-method-port
    get-export-cookie
    System.Transactions.TransactionInterop
    GetExportCookie
    (static:
      System.Byte[]
      System.Transactions.Transaction
      System.Byte[]))
  (define-method-port
    get-transmitter-propagation-token
    System.Transactions.TransactionInterop
    GetTransmitterPropagationToken
    (static: System.Byte[] System.Transactions.Transaction))
  (define-method-port
    get-transaction-from-transmitter-propagation-token
    System.Transactions.TransactionInterop
    GetTransactionFromTransmitterPropagationToken
    (static: System.Transactions.Transaction System.Byte[]))
  (define-method-port
    get-dtc-transaction
    System.Transactions.TransactionInterop
    GetDtcTransaction
    (static:
      System.Transactions.IDtcTransaction
      System.Transactions.Transaction))
  (define-method-port
    get-whereabouts
    System.Transactions.TransactionInterop
    GetWhereabouts
    (static: System.Byte[]))
  (define-method-port
    get-transaction-from-export-cookie
    System.Transactions.TransactionInterop
    GetTransactionFromExportCookie
    (static: System.Transactions.Transaction System.Byte[])))

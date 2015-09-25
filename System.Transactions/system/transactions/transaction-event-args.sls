(library (system transactions transaction-event-args)
  (export new is? transaction-event-args? transaction)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Transactions.TransactionEventArgs a ...)))))
  (define (is? a) (clr-is System.Transactions.TransactionEventArgs a))
  (define (transaction-event-args? a)
    (clr-is System.Transactions.TransactionEventArgs a))
  (define-field-port
    transaction
    #f
    #f
    (property:)
    System.Transactions.TransactionEventArgs
    Transaction
    System.Transactions.Transaction))

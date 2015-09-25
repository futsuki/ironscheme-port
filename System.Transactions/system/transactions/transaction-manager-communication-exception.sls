(library (system
          transactions
          transaction-manager-communication-exception)
  (export new is? transaction-manager-communication-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Transactions.TransactionManagerCommunicationException
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Transactions.TransactionManagerCommunicationException
      a))
  (define (transaction-manager-communication-exception? a)
    (clr-is
      System.Transactions.TransactionManagerCommunicationException
      a)))

(library (system transactions transaction-exception)
  (export new is? transaction-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Transactions.TransactionException a ...)))))
  (define (is? a) (clr-is System.Transactions.TransactionException a))
  (define (transaction-exception? a)
    (clr-is System.Transactions.TransactionException a)))
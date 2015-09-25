(library (system transactions transaction-aborted-exception)
  (export new is? transaction-aborted-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Transactions.TransactionAbortedException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Transactions.TransactionAbortedException a))
  (define (transaction-aborted-exception? a)
    (clr-is System.Transactions.TransactionAbortedException a)))

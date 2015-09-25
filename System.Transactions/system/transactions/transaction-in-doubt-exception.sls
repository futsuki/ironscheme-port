(library (system transactions transaction-in-doubt-exception)
  (export new is? transaction-in-doubt-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Transactions.TransactionInDoubtException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Transactions.TransactionInDoubtException a))
  (define (transaction-in-doubt-exception? a)
    (clr-is System.Transactions.TransactionInDoubtException a)))

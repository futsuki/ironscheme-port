(library (system transactions transaction-scope)
  (export new is? transaction-scope? dispose complete)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Transactions.TransactionScope a ...)))))
  (define (is? a) (clr-is System.Transactions.TransactionScope a))
  (define (transaction-scope? a)
    (clr-is System.Transactions.TransactionScope a))
  (define-method-port
    dispose
    System.Transactions.TransactionScope
    Dispose
    (System.Void))
  (define-method-port
    complete
    System.Transactions.TransactionScope
    Complete
    (System.Void)))

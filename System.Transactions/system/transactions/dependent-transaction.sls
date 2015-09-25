(library (system transactions dependent-transaction)
  (export is? dependent-transaction? complete)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Transactions.DependentTransaction a))
  (define (dependent-transaction? a)
    (clr-is System.Transactions.DependentTransaction a))
  (define-method-port
    complete
    System.Transactions.DependentTransaction
    Complete
    (System.Void)))

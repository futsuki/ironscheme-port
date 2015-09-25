(library (system transactions subordinate-transaction)
  (export new is? subordinate-transaction?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Transactions.SubordinateTransaction
             a
             ...)))))
  (define (is? a) (clr-is System.Transactions.SubordinateTransaction a))
  (define (subordinate-transaction? a)
    (clr-is System.Transactions.SubordinateTransaction a)))

(library (system transactions transaction-promotion-exception)
  (export new is? transaction-promotion-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Transactions.TransactionPromotionException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Transactions.TransactionPromotionException a))
  (define (transaction-promotion-exception? a)
    (clr-is System.Transactions.TransactionPromotionException a)))

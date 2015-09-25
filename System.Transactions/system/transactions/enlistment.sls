(library (system transactions enlistment)
  (export is? enlistment? done)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Transactions.Enlistment a))
  (define (enlistment? a) (clr-is System.Transactions.Enlistment a))
  (define-method-port
    done
    System.Transactions.Enlistment
    Done
    (System.Void)))

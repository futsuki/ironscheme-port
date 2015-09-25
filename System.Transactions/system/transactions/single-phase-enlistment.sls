(library (system transactions single-phase-enlistment)
  (export is? single-phase-enlistment? in-doubt committed aborted)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Transactions.SinglePhaseEnlistment a))
  (define (single-phase-enlistment? a)
    (clr-is System.Transactions.SinglePhaseEnlistment a))
  (define-method-port
    in-doubt
    System.Transactions.SinglePhaseEnlistment
    InDoubt
    (System.Void System.Exception)
    (System.Void))
  (define-method-port
    committed
    System.Transactions.SinglePhaseEnlistment
    Committed
    (System.Void))
  (define-method-port
    aborted
    System.Transactions.SinglePhaseEnlistment
    Aborted
    (System.Void System.Exception)
    (System.Void)))

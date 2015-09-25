(library (system transactions preparing-enlistment)
  (export is?
          preparing-enlistment?
          prepared
          force-rollback
          recovery-information)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Transactions.PreparingEnlistment a))
  (define (preparing-enlistment? a)
    (clr-is System.Transactions.PreparingEnlistment a))
  (define-method-port
    prepared
    System.Transactions.PreparingEnlistment
    Prepared
    (System.Void))
  (define-method-port
    force-rollback
    System.Transactions.PreparingEnlistment
    ForceRollback
    (System.Void System.Exception)
    (System.Void))
  (define-method-port
    recovery-information
    System.Transactions.PreparingEnlistment
    RecoveryInformation
    (System.Byte[])))

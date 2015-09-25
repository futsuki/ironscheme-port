(library (system transactions committable-transaction)
  (export new
          is?
          committable-transaction?
          end-commit
          begin-commit
          commit)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Transactions.CommittableTransaction
             a
             ...)))))
  (define (is? a) (clr-is System.Transactions.CommittableTransaction a))
  (define (committable-transaction? a)
    (clr-is System.Transactions.CommittableTransaction a))
  (define-method-port
    end-commit
    System.Transactions.CommittableTransaction
    EndCommit
    (System.Void System.IAsyncResult))
  (define-method-port
    begin-commit
    System.Transactions.CommittableTransaction
    BeginCommit
    (System.IAsyncResult System.AsyncCallback System.Object))
  (define-method-port
    commit
    System.Transactions.CommittableTransaction
    Commit
    (System.Void)))

(library (system
          component-model
          design
          designer-transaction-close-event-args)
  (export new
          is?
          designer-transaction-close-event-args?
          last-transaction?
          transaction-committed?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.DesignerTransactionCloseEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.ComponentModel.Design.DesignerTransactionCloseEventArgs
      a))
  (define (designer-transaction-close-event-args? a)
    (clr-is
      System.ComponentModel.Design.DesignerTransactionCloseEventArgs
      a))
  (define-field-port
    last-transaction?
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesignerTransactionCloseEventArgs
    LastTransaction
    System.Boolean)
  (define-field-port
    transaction-committed?
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesignerTransactionCloseEventArgs
    TransactionCommitted
    System.Boolean))

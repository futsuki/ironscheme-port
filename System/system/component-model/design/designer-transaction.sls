(library (system component-model design designer-transaction)
  (export is?
          designer-transaction?
          commit
          cancel
          canceled?
          committed?
          description)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.ComponentModel.Design.DesignerTransaction a))
  (define (designer-transaction? a)
    (clr-is System.ComponentModel.Design.DesignerTransaction a))
  (define-method-port
    commit
    System.ComponentModel.Design.DesignerTransaction
    Commit
    (System.Void))
  (define-method-port
    cancel
    System.ComponentModel.Design.DesignerTransaction
    Cancel
    (System.Void))
  (define-field-port
    canceled?
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesignerTransaction
    Canceled
    System.Boolean)
  (define-field-port
    committed?
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesignerTransaction
    Committed
    System.Boolean)
  (define-field-port
    description
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesignerTransaction
    Description
    System.String))

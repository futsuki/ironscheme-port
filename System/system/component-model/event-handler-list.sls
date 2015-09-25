(library (system component-model event-handler-list)
  (export new
          is?
          event-handler-list?
          dispose
          add-handler
          add-handlers
          remove-handler
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.EventHandlerList a ...)))))
  (define (is? a) (clr-is System.ComponentModel.EventHandlerList a))
  (define (event-handler-list? a)
    (clr-is System.ComponentModel.EventHandlerList a))
  (define-method-port
    dispose
    System.ComponentModel.EventHandlerList
    Dispose
    (System.Void))
  (define-method-port
    add-handler
    System.ComponentModel.EventHandlerList
    AddHandler
    (System.Void System.Object System.Delegate))
  (define-method-port
    add-handlers
    System.ComponentModel.EventHandlerList
    AddHandlers
    (System.Void System.ComponentModel.EventHandlerList))
  (define-method-port
    remove-handler
    System.ComponentModel.EventHandlerList
    RemoveHandler
    (System.Void System.Object System.Delegate))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.ComponentModel.EventHandlerList
    Item
    System.Delegate))

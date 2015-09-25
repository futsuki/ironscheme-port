(library (system component-model collection-change-event-args)
  (export new is? collection-change-event-args? action element)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.CollectionChangeEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.CollectionChangeEventArgs a))
  (define (collection-change-event-args? a)
    (clr-is System.ComponentModel.CollectionChangeEventArgs a))
  (define-field-port
    action
    #f
    #f
    (property:)
    System.ComponentModel.CollectionChangeEventArgs
    Action
    System.ComponentModel.CollectionChangeAction)
  (define-field-port
    element
    #f
    #f
    (property:)
    System.ComponentModel.CollectionChangeEventArgs
    Element
    System.Object))

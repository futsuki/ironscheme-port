(library (system component-model async-operation-manager)
  (export is?
          async-operation-manager?
          create-operation
          synchronization-context-get
          synchronization-context-set!
          synchronization-context-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.ComponentModel.AsyncOperationManager a))
  (define (async-operation-manager? a)
    (clr-is System.ComponentModel.AsyncOperationManager a))
  (define-method-port
    create-operation
    System.ComponentModel.AsyncOperationManager
    CreateOperation
    (static: System.ComponentModel.AsyncOperation System.Object))
  (define-field-port
    synchronization-context-get
    synchronization-context-set!
    synchronization-context-update!
    (static: property:)
    System.ComponentModel.AsyncOperationManager
    SynchronizationContext
    System.Threading.SynchronizationContext))

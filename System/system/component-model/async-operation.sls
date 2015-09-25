(library (system component-model async-operation)
  (export is?
          async-operation?
          post
          operation-completed
          post-operation-completed
          synchronization-context
          user-supplied-state)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.AsyncOperation a))
  (define (async-operation? a)
    (clr-is System.ComponentModel.AsyncOperation a))
  (define-method-port
    post
    System.ComponentModel.AsyncOperation
    Post
    (System.Void System.Threading.SendOrPostCallback System.Object))
  (define-method-port
    operation-completed
    System.ComponentModel.AsyncOperation
    OperationCompleted
    (System.Void))
  (define-method-port
    post-operation-completed
    System.ComponentModel.AsyncOperation
    PostOperationCompleted
    (System.Void System.Threading.SendOrPostCallback System.Object))
  (define-field-port
    synchronization-context
    #f
    #f
    (property:)
    System.ComponentModel.AsyncOperation
    SynchronizationContext
    System.Threading.SynchronizationContext)
  (define-field-port
    user-supplied-state
    #f
    #f
    (property:)
    System.ComponentModel.AsyncOperation
    UserSuppliedState
    System.Object))

(library (system threading synchronization-context)
  (export new
          is?
          synchronization-context?
          post
          operation-completed
          wait
          is-wait-notification-required?
          send
          create-copy
          set-synchronization-context
          operation-started
          current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Threading.SynchronizationContext a ...)))))
  (define (is? a) (clr-is System.Threading.SynchronizationContext a))
  (define (synchronization-context? a)
    (clr-is System.Threading.SynchronizationContext a))
  (define-method-port
    post
    System.Threading.SynchronizationContext
    Post
    (System.Void System.Threading.SendOrPostCallback System.Object))
  (define-method-port
    operation-completed
    System.Threading.SynchronizationContext
    OperationCompleted
    (System.Void))
  (define-method-port
    wait
    System.Threading.SynchronizationContext
    Wait
    (System.Int32 System.IntPtr[] System.Boolean System.Int32))
  (define-method-port
    is-wait-notification-required?
    System.Threading.SynchronizationContext
    IsWaitNotificationRequired
    (System.Boolean))
  (define-method-port
    send
    System.Threading.SynchronizationContext
    Send
    (System.Void System.Threading.SendOrPostCallback System.Object))
  (define-method-port
    create-copy
    System.Threading.SynchronizationContext
    CreateCopy
    (System.Threading.SynchronizationContext))
  (define-method-port
    set-synchronization-context
    System.Threading.SynchronizationContext
    SetSynchronizationContext
    (static: System.Void System.Threading.SynchronizationContext))
  (define-method-port
    operation-started
    System.Threading.SynchronizationContext
    OperationStarted
    (System.Void))
  (define-field-port
    current
    #f
    #f
    (static: property:)
    System.Threading.SynchronizationContext
    Current
    System.Threading.SynchronizationContext))

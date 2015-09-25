(library (system net listener-async-result)
  (export new
          is?
          listener-async-result?
          async-state
          async-wait-handle
          completed-synchronously?
          is-completed?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.ListenerAsyncResult a ...)))))
  (define (is? a) (clr-is System.Net.ListenerAsyncResult a))
  (define (listener-async-result? a)
    (clr-is System.Net.ListenerAsyncResult a))
  (define-field-port
    async-state
    #f
    #f
    (property:)
    System.Net.ListenerAsyncResult
    AsyncState
    System.Object)
  (define-field-port
    async-wait-handle
    #f
    #f
    (property:)
    System.Net.ListenerAsyncResult
    AsyncWaitHandle
    System.Threading.WaitHandle)
  (define-field-port
    completed-synchronously?
    #f
    #f
    (property:)
    System.Net.ListenerAsyncResult
    CompletedSynchronously
    System.Boolean)
  (define-field-port
    is-completed?
    #f
    #f
    (property:)
    System.Net.ListenerAsyncResult
    IsCompleted
    System.Boolean))

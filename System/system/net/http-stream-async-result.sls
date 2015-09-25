(library (system net http-stream-async-result)
  (export new
          is?
          http-stream-async-result?
          complete
          async-state
          async-wait-handle
          completed-synchronously?
          is-completed?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.HttpStreamAsyncResult a ...)))))
  (define (is? a) (clr-is System.Net.HttpStreamAsyncResult a))
  (define (http-stream-async-result? a)
    (clr-is System.Net.HttpStreamAsyncResult a))
  (define-method-port
    complete
    System.Net.HttpStreamAsyncResult
    Complete
    (System.Void)
    (System.Void System.Exception))
  (define-field-port
    async-state
    #f
    #f
    (property:)
    System.Net.HttpStreamAsyncResult
    AsyncState
    System.Object)
  (define-field-port
    async-wait-handle
    #f
    #f
    (property:)
    System.Net.HttpStreamAsyncResult
    AsyncWaitHandle
    System.Threading.WaitHandle)
  (define-field-port
    completed-synchronously?
    #f
    #f
    (property:)
    System.Net.HttpStreamAsyncResult
    CompletedSynchronously
    System.Boolean)
  (define-field-port
    is-completed?
    #f
    #f
    (property:)
    System.Net.HttpStreamAsyncResult
    IsCompleted
    System.Boolean))

(library (system io stream-async-result)
  (export new
          is?
          stream-async-result?
          set-complete
          async-state
          async-wait-handle
          completed-synchronously?
          is-completed?
          exception
          nbytes
          done?-get
          done?-set!
          done?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.StreamAsyncResult a ...)))))
  (define (is? a) (clr-is System.IO.StreamAsyncResult a))
  (define (stream-async-result? a)
    (clr-is System.IO.StreamAsyncResult a))
  (define-method-port
    set-complete
    System.IO.StreamAsyncResult
    SetComplete
    (System.Void System.Exception System.Int32)
    (System.Void System.Exception))
  (define-field-port
    async-state
    #f
    #f
    (property:)
    System.IO.StreamAsyncResult
    AsyncState
    System.Object)
  (define-field-port
    async-wait-handle
    #f
    #f
    (property:)
    System.IO.StreamAsyncResult
    AsyncWaitHandle
    System.Threading.WaitHandle)
  (define-field-port
    completed-synchronously?
    #f
    #f
    (property:)
    System.IO.StreamAsyncResult
    CompletedSynchronously
    System.Boolean)
  (define-field-port
    is-completed?
    #f
    #f
    (property:)
    System.IO.StreamAsyncResult
    IsCompleted
    System.Boolean)
  (define-field-port
    exception
    #f
    #f
    (property:)
    System.IO.StreamAsyncResult
    Exception
    System.Exception)
  (define-field-port
    nbytes
    #f
    #f
    (property:)
    System.IO.StreamAsyncResult
    NBytes
    System.Int32)
  (define-field-port
    done?-get
    done?-set!
    done?-update!
    (property:)
    System.IO.StreamAsyncResult
    Done
    System.Boolean))

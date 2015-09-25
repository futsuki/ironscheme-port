(library (system io file-stream-async-result)
  (export new
          is?
          file-stream-async-result?
          set-complete
          buffer-get
          buffer-set!
          buffer-update!
          offset-get
          offset-set!
          offset-update!
          count-get
          count-set!
          count-update!
          original-count-get
          original-count-set!
          original-count-update!
          bytes-read-get
          bytes-read-set!
          bytes-read-update!
          async-state
          completed-synchronously?
          async-wait-handle
          is-completed?
          exception
          done?-get
          done?-set!
          done?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.FileStreamAsyncResult a ...)))))
  (define (is? a) (clr-is System.IO.FileStreamAsyncResult a))
  (define (file-stream-async-result? a)
    (clr-is System.IO.FileStreamAsyncResult a))
  (define-method-port
    set-complete
    System.IO.FileStreamAsyncResult
    SetComplete
    (System.Void System.Exception System.Int32 System.Boolean)
    (System.Void System.Exception System.Int32)
    (System.Void System.Exception))
  (define-field-port
    buffer-get
    buffer-set!
    buffer-update!
    ()
    System.IO.FileStreamAsyncResult
    Buffer
    System.Byte[])
  (define-field-port
    offset-get
    offset-set!
    offset-update!
    ()
    System.IO.FileStreamAsyncResult
    Offset
    System.Int32)
  (define-field-port
    count-get
    count-set!
    count-update!
    ()
    System.IO.FileStreamAsyncResult
    Count
    System.Int32)
  (define-field-port
    original-count-get
    original-count-set!
    original-count-update!
    ()
    System.IO.FileStreamAsyncResult
    OriginalCount
    System.Int32)
  (define-field-port
    bytes-read-get
    bytes-read-set!
    bytes-read-update!
    ()
    System.IO.FileStreamAsyncResult
    BytesRead
    System.Int32)
  (define-field-port
    async-state
    #f
    #f
    (property:)
    System.IO.FileStreamAsyncResult
    AsyncState
    System.Object)
  (define-field-port
    completed-synchronously?
    #f
    #f
    (property:)
    System.IO.FileStreamAsyncResult
    CompletedSynchronously
    System.Boolean)
  (define-field-port
    async-wait-handle
    #f
    #f
    (property:)
    System.IO.FileStreamAsyncResult
    AsyncWaitHandle
    System.Threading.WaitHandle)
  (define-field-port
    is-completed?
    #f
    #f
    (property:)
    System.IO.FileStreamAsyncResult
    IsCompleted
    System.Boolean)
  (define-field-port
    exception
    #f
    #f
    (property:)
    System.IO.FileStreamAsyncResult
    Exception
    System.Exception)
  (define-field-port
    done?-get
    done?-set!
    done?-update!
    (property:)
    System.IO.FileStreamAsyncResult
    Done
    System.Boolean))

(library (system data sql-client sql-async-result)
  (export new
          is?
          sql-async-result?
          bubbleback
          async-state
          async-wait-handle
          is-completed?
          completed-synchronously?
          end-method-get
          end-method-set!
          end-method-update!
          ended?-get
          ended?-set!
          ended?-update!
          bubble-callback)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SqlAsyncResult a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SqlAsyncResult a))
  (define (sql-async-result? a)
    (clr-is System.Data.SqlClient.SqlAsyncResult a))
  (define-method-port
    bubbleback
    System.Data.SqlClient.SqlAsyncResult
    Bubbleback
    (System.Void System.IAsyncResult))
  (define-field-port
    async-state
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlAsyncResult
    AsyncState
    System.Object)
  (define-field-port
    async-wait-handle
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlAsyncResult
    AsyncWaitHandle
    System.Threading.WaitHandle)
  (define-field-port
    is-completed?
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlAsyncResult
    IsCompleted
    System.Boolean)
  (define-field-port
    completed-synchronously?
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlAsyncResult
    CompletedSynchronously
    System.Boolean)
  (define-field-port
    end-method-get
    end-method-set!
    end-method-update!
    (property:)
    System.Data.SqlClient.SqlAsyncResult
    EndMethod
    System.String)
  (define-field-port
    ended?-get
    ended?-set!
    ended?-update!
    (property:)
    System.Data.SqlClient.SqlAsyncResult
    Ended
    System.Boolean)
  (define-field-port
    bubble-callback
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlAsyncResult
    BubbleCallback
    System.AsyncCallback))

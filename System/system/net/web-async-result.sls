(library (system net web-async-result)
  (export new
          is?
          web-async-result?
          end-called?-get
          end-called?-set!
          end-called?-update!
          async-write-all?-get
          async-write-all?-set!
          async-write-all?-update!
          async-state
          async-wait-handle
          completed-synchronously?
          is-completed?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebAsyncResult a ...)))))
  (define (is? a) (clr-is System.Net.WebAsyncResult a))
  (define (web-async-result? a) (clr-is System.Net.WebAsyncResult a))
  (define-field-port
    end-called?-get
    end-called?-set!
    end-called?-update!
    ()
    System.Net.WebAsyncResult
    EndCalled
    System.Boolean)
  (define-field-port
    async-write-all?-get
    async-write-all?-set!
    async-write-all?-update!
    ()
    System.Net.WebAsyncResult
    AsyncWriteAll
    System.Boolean)
  (define-field-port
    async-state
    #f
    #f
    (property:)
    System.Net.WebAsyncResult
    AsyncState
    System.Object)
  (define-field-port
    async-wait-handle
    #f
    #f
    (property:)
    System.Net.WebAsyncResult
    AsyncWaitHandle
    System.Threading.WaitHandle)
  (define-field-port
    completed-synchronously?
    #f
    #f
    (property:)
    System.Net.WebAsyncResult
    CompletedSynchronously
    System.Boolean)
  (define-field-port
    is-completed?
    #f
    #f
    (property:)
    System.Net.WebAsyncResult
    IsCompleted
    System.Boolean))

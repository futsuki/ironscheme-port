(library (system net ftp-async-result)
  (export new
          is?
          ftp-async-result?
          async-state
          async-wait-handle
          completed-synchronously?
          is-completed?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.FtpAsyncResult a ...)))))
  (define (is? a) (clr-is System.Net.FtpAsyncResult a))
  (define (ftp-async-result? a) (clr-is System.Net.FtpAsyncResult a))
  (define-field-port
    async-state
    #f
    #f
    (property:)
    System.Net.FtpAsyncResult
    AsyncState
    System.Object)
  (define-field-port
    async-wait-handle
    #f
    #f
    (property:)
    System.Net.FtpAsyncResult
    AsyncWaitHandle
    System.Threading.WaitHandle)
  (define-field-port
    completed-synchronously?
    #f
    #f
    (property:)
    System.Net.FtpAsyncResult
    CompletedSynchronously
    System.Boolean)
  (define-field-port
    is-completed?
    #f
    #f
    (property:)
    System.Net.FtpAsyncResult
    IsCompleted
    System.Boolean))

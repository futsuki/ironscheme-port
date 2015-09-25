(library (microsoft win32 safe-handles safe-wait-handle)
  (export new is? safe-wait-handle?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.Win32.SafeHandles.SafeWaitHandle
             a
             ...)))))
  (define (is? a) (clr-is Microsoft.Win32.SafeHandles.SafeWaitHandle a))
  (define (safe-wait-handle? a)
    (clr-is Microsoft.Win32.SafeHandles.SafeWaitHandle a)))

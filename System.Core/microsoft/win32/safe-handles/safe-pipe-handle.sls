(library (microsoft win32 safe-handles safe-pipe-handle)
  (export new is? safe-pipe-handle?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.Win32.SafeHandles.SafePipeHandle
             a
             ...)))))
  (define (is? a) (clr-is Microsoft.Win32.SafeHandles.SafePipeHandle a))
  (define (safe-pipe-handle? a)
    (clr-is Microsoft.Win32.SafeHandles.SafePipeHandle a)))

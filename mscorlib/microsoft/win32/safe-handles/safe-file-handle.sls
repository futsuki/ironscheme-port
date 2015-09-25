(library (microsoft win32 safe-handles safe-file-handle)
  (export new is? safe-file-handle?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.Win32.SafeHandles.SafeFileHandle
             a
             ...)))))
  (define (is? a) (clr-is Microsoft.Win32.SafeHandles.SafeFileHandle a))
  (define (safe-file-handle? a)
    (clr-is Microsoft.Win32.SafeHandles.SafeFileHandle a)))

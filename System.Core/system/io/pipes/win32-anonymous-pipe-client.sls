(library (system io pipes win32-anonymous-pipe-client)
  (export new is? win32-anonymous-pipe-client? handle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.Win32AnonymousPipeClient a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.Win32AnonymousPipeClient a))
  (define (win32-anonymous-pipe-client? a)
    (clr-is System.IO.Pipes.Win32AnonymousPipeClient a))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.Win32AnonymousPipeClient
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle))

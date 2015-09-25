(library (system io pipes win32-anonymous-pipe)
  (export is? win32-anonymous-pipe? wait-for-pipe-drain handle)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.Pipes.Win32AnonymousPipe a))
  (define (win32-anonymous-pipe? a)
    (clr-is System.IO.Pipes.Win32AnonymousPipe a))
  (define-method-port
    wait-for-pipe-drain
    System.IO.Pipes.Win32AnonymousPipe
    WaitForPipeDrain
    (System.Void))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.Win32AnonymousPipe
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle))

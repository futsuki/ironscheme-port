(library (system io pipes unix-anonymous-pipe)
  (export is? unix-anonymous-pipe? wait-for-pipe-drain handle)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.Pipes.UnixAnonymousPipe a))
  (define (unix-anonymous-pipe? a)
    (clr-is System.IO.Pipes.UnixAnonymousPipe a))
  (define-method-port
    wait-for-pipe-drain
    System.IO.Pipes.UnixAnonymousPipe
    WaitForPipeDrain
    (System.Void))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.UnixAnonymousPipe
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle))

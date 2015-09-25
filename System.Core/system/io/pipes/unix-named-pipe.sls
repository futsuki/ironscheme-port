(library (system io pipes unix-named-pipe)
  (export is?
          unix-named-pipe?
          wait-for-pipe-drain
          ensure-target-file
          handle)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.Pipes.UnixNamedPipe a))
  (define (unix-named-pipe? a) (clr-is System.IO.Pipes.UnixNamedPipe a))
  (define-method-port
    wait-for-pipe-drain
    System.IO.Pipes.UnixNamedPipe
    WaitForPipeDrain
    (System.Void))
  (define-method-port
    ensure-target-file
    System.IO.Pipes.UnixNamedPipe
    EnsureTargetFile
    (System.Void System.String))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.UnixNamedPipe
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle))

(library (system io pipes win32-named-pipe)
  (export is? win32-named-pipe? wait-for-pipe-drain name handle)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.Pipes.Win32NamedPipe a))
  (define (win32-named-pipe? a)
    (clr-is System.IO.Pipes.Win32NamedPipe a))
  (define-method-port
    wait-for-pipe-drain
    System.IO.Pipes.Win32NamedPipe
    WaitForPipeDrain
    (System.Void))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.IO.Pipes.Win32NamedPipe
    Name
    System.String)
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.Win32NamedPipe
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle))

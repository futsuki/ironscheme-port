(library (system runtime interop-services safe-handle)
  (export is?
          safe-handle?
          dangerous-get-handle
          dispose
          dangerous-release
          dangerous-add-ref
          set-handle-as-invalid
          close
          is-closed?
          is-invalid?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Runtime.InteropServices.SafeHandle a))
  (define (safe-handle? a)
    (clr-is System.Runtime.InteropServices.SafeHandle a))
  (define-method-port
    dangerous-get-handle
    System.Runtime.InteropServices.SafeHandle
    DangerousGetHandle
    (System.IntPtr))
  (define-method-port
    dispose
    System.Runtime.InteropServices.SafeHandle
    Dispose
    (System.Void))
  (define-method-port
    dangerous-release
    System.Runtime.InteropServices.SafeHandle
    DangerousRelease
    (System.Void))
  (define-method-port
    dangerous-add-ref
    System.Runtime.InteropServices.SafeHandle
    DangerousAddRef
    (System.Void System.Boolean&))
  (define-method-port
    set-handle-as-invalid
    System.Runtime.InteropServices.SafeHandle
    SetHandleAsInvalid
    (System.Void))
  (define-method-port
    close
    System.Runtime.InteropServices.SafeHandle
    Close
    (System.Void))
  (define-field-port
    is-closed?
    #f
    #f
    (property:)
    System.Runtime.InteropServices.SafeHandle
    IsClosed
    System.Boolean)
  (define-field-port
    is-invalid?
    #f
    #f
    (property:)
    System.Runtime.InteropServices.SafeHandle
    IsInvalid
    System.Boolean))

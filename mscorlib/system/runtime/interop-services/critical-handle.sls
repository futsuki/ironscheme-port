(library (system runtime interop-services critical-handle)
  (export is?
          critical-handle?
          dispose
          set-handle-as-invalid
          close
          is-closed?
          is-invalid?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.CriticalHandle a))
  (define (critical-handle? a)
    (clr-is System.Runtime.InteropServices.CriticalHandle a))
  (define-method-port
    dispose
    System.Runtime.InteropServices.CriticalHandle
    Dispose
    (System.Void))
  (define-method-port
    set-handle-as-invalid
    System.Runtime.InteropServices.CriticalHandle
    SetHandleAsInvalid
    (System.Void))
  (define-method-port
    close
    System.Runtime.InteropServices.CriticalHandle
    Close
    (System.Void))
  (define-field-port
    is-closed?
    #f
    #f
    (property:)
    System.Runtime.InteropServices.CriticalHandle
    IsClosed
    System.Boolean)
  (define-field-port
    is-invalid?
    #f
    #f
    (property:)
    System.Runtime.InteropServices.CriticalHandle
    IsInvalid
    System.Boolean))

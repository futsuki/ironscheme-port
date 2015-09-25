(library (microsoft win32 safe-handles safe-handle-minus-one-is-invalid)
  (export is? safe-handle-minus-one-is-invalid? is-invalid?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is Microsoft.Win32.SafeHandles.SafeHandleMinusOneIsInvalid a))
  (define (safe-handle-minus-one-is-invalid? a)
    (clr-is Microsoft.Win32.SafeHandles.SafeHandleMinusOneIsInvalid a))
  (define-field-port
    is-invalid?
    #f
    #f
    (property:)
    Microsoft.Win32.SafeHandles.SafeHandleMinusOneIsInvalid
    IsInvalid
    System.Boolean))

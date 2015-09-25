(library (microsoft
          win32
          safe-handles
          critical-handle-minus-one-is-invalid)
  (export is? critical-handle-minus-one-is-invalid? is-invalid?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      Microsoft.Win32.SafeHandles.CriticalHandleMinusOneIsInvalid
      a))
  (define (critical-handle-minus-one-is-invalid? a)
    (clr-is
      Microsoft.Win32.SafeHandles.CriticalHandleMinusOneIsInvalid
      a))
  (define-field-port
    is-invalid?
    #f
    #f
    (property:)
    Microsoft.Win32.SafeHandles.CriticalHandleMinusOneIsInvalid
    IsInvalid
    System.Boolean))

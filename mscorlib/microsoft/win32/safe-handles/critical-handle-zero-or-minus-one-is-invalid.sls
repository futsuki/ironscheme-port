(library (microsoft
          win32
          safe-handles
          critical-handle-zero-or-minus-one-is-invalid)
  (export is? critical-handle-zero-or-minus-one-is-invalid? is-invalid?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      Microsoft.Win32.SafeHandles.CriticalHandleZeroOrMinusOneIsInvalid
      a))
  (define (critical-handle-zero-or-minus-one-is-invalid? a)
    (clr-is
      Microsoft.Win32.SafeHandles.CriticalHandleZeroOrMinusOneIsInvalid
      a))
  (define-field-port
    is-invalid?
    #f
    #f
    (property:)
    Microsoft.Win32.SafeHandles.CriticalHandleZeroOrMinusOneIsInvalid
    IsInvalid
    System.Boolean))

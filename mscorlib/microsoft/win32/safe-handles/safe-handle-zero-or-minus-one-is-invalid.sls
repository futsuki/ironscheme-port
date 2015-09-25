(library (microsoft
          win32
          safe-handles
          safe-handle-zero-or-minus-one-is-invalid)
  (export is? safe-handle-zero-or-minus-one-is-invalid? is-invalid?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid
      a))
  (define (safe-handle-zero-or-minus-one-is-invalid? a)
    (clr-is
      Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid
      a))
  (define-field-port
    is-invalid?
    #f
    #f
    (property:)
    Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid
    IsInvalid
    System.Boolean))

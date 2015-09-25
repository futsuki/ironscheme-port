(library (microsoft win32 power-mode-changed-event-args)
  (export new is? power-mode-changed-event-args? mode)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Microsoft.Win32.PowerModeChangedEventArgs a ...)))))
  (define (is? a) (clr-is Microsoft.Win32.PowerModeChangedEventArgs a))
  (define (power-mode-changed-event-args? a)
    (clr-is Microsoft.Win32.PowerModeChangedEventArgs a))
  (define-field-port
    mode
    #f
    #f
    (property:)
    Microsoft.Win32.PowerModeChangedEventArgs
    Mode
    Microsoft.Win32.PowerModes))

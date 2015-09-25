(library (microsoft win32 session-ending-event-args)
  (export new
          is?
          session-ending-event-args?
          reason
          cancel?-get
          cancel?-set!
          cancel?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Microsoft.Win32.SessionEndingEventArgs a ...)))))
  (define (is? a) (clr-is Microsoft.Win32.SessionEndingEventArgs a))
  (define (session-ending-event-args? a)
    (clr-is Microsoft.Win32.SessionEndingEventArgs a))
  (define-field-port
    reason
    #f
    #f
    (property:)
    Microsoft.Win32.SessionEndingEventArgs
    Reason
    Microsoft.Win32.SessionEndReasons)
  (define-field-port
    cancel?-get
    cancel?-set!
    cancel?-update!
    (property:)
    Microsoft.Win32.SessionEndingEventArgs
    Cancel
    System.Boolean))

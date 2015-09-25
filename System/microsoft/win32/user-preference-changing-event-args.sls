(library (microsoft win32 user-preference-changing-event-args)
  (export new is? user-preference-changing-event-args? category)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.Win32.UserPreferenceChangingEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is Microsoft.Win32.UserPreferenceChangingEventArgs a))
  (define (user-preference-changing-event-args? a)
    (clr-is Microsoft.Win32.UserPreferenceChangingEventArgs a))
  (define-field-port
    category
    #f
    #f
    (property:)
    Microsoft.Win32.UserPreferenceChangingEventArgs
    Category
    Microsoft.Win32.UserPreferenceCategory))

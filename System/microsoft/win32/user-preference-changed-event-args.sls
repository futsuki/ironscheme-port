(library (microsoft win32 user-preference-changed-event-args)
  (export new is? user-preference-changed-event-args? category)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.Win32.UserPreferenceChangedEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is Microsoft.Win32.UserPreferenceChangedEventArgs a))
  (define (user-preference-changed-event-args? a)
    (clr-is Microsoft.Win32.UserPreferenceChangedEventArgs a))
  (define-field-port
    category
    #f
    #f
    (property:)
    Microsoft.Win32.UserPreferenceChangedEventArgs
    Category
    Microsoft.Win32.UserPreferenceCategory))

(library (system diagnostics entry-written-event-args)
  (export new is? entry-written-event-args? entry)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.EntryWrittenEventArgs a ...)))))
  (define (is? a) (clr-is System.Diagnostics.EntryWrittenEventArgs a))
  (define (entry-written-event-args? a)
    (clr-is System.Diagnostics.EntryWrittenEventArgs a))
  (define-field-port
    entry
    #f
    #f
    (property:)
    System.Diagnostics.EntryWrittenEventArgs
    Entry
    System.Diagnostics.EventLogEntry))

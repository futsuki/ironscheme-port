(library (system data merge-failed-event-args)
  (export new is? merge-failed-event-args? table conflict)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.MergeFailedEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.MergeFailedEventArgs a))
  (define (merge-failed-event-args? a)
    (clr-is System.Data.MergeFailedEventArgs a))
  (define-field-port
    table
    #f
    #f
    (property:)
    System.Data.MergeFailedEventArgs
    Table
    System.Data.DataTable)
  (define-field-port
    conflict
    #f
    #f
    (property:)
    System.Data.MergeFailedEventArgs
    Conflict
    System.String))

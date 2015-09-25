(library (system data statement-completed-event-args)
  (export new is? statement-completed-event-args? record-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.StatementCompletedEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.StatementCompletedEventArgs a))
  (define (statement-completed-event-args? a)
    (clr-is System.Data.StatementCompletedEventArgs a))
  (define-field-port
    record-count
    #f
    #f
    (property:)
    System.Data.StatementCompletedEventArgs
    RecordCount
    System.Int32))

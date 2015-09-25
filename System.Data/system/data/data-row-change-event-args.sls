(library (system data data-row-change-event-args)
  (export new is? data-row-change-event-args? action row)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.DataRowChangeEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.DataRowChangeEventArgs a))
  (define (data-row-change-event-args? a)
    (clr-is System.Data.DataRowChangeEventArgs a))
  (define-field-port
    action
    #f
    #f
    (property:)
    System.Data.DataRowChangeEventArgs
    Action
    System.Data.DataRowAction)
  (define-field-port
    row
    #f
    #f
    (property:)
    System.Data.DataRowChangeEventArgs
    Row
    System.Data.DataRow))

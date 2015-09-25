(library (system data data-table-new-row-event-args)
  (export new is? data-table-new-row-event-args? row)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.DataTableNewRowEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.DataTableNewRowEventArgs a))
  (define (data-table-new-row-event-args? a)
    (clr-is System.Data.DataTableNewRowEventArgs a))
  (define-field-port
    row
    #f
    #f
    (property:)
    System.Data.DataTableNewRowEventArgs
    Row
    System.Data.DataRow))

(library (system data data-column-change-event-args)
  (export new
          is?
          data-column-change-event-args?
          column
          proposed-value-get
          proposed-value-set!
          proposed-value-update!
          row)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.DataColumnChangeEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.DataColumnChangeEventArgs a))
  (define (data-column-change-event-args? a)
    (clr-is System.Data.DataColumnChangeEventArgs a))
  (define-field-port
    column
    #f
    #f
    (property:)
    System.Data.DataColumnChangeEventArgs
    Column
    System.Data.DataColumn)
  (define-field-port
    proposed-value-get
    proposed-value-set!
    proposed-value-update!
    (property:)
    System.Data.DataColumnChangeEventArgs
    ProposedValue
    System.Object)
  (define-field-port
    row
    #f
    #f
    (property:)
    System.Data.DataColumnChangeEventArgs
    Row
    System.Data.DataRow))

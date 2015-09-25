(library (system data fill-error-event-args)
  (export new
          is?
          fill-error-event-args?
          continue?-get
          continue?-set!
          continue?-update!
          data-table
          errors-get
          errors-set!
          errors-update!
          values)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.FillErrorEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.FillErrorEventArgs a))
  (define (fill-error-event-args? a)
    (clr-is System.Data.FillErrorEventArgs a))
  (define-field-port
    continue?-get
    continue?-set!
    continue?-update!
    (property:)
    System.Data.FillErrorEventArgs
    Continue
    System.Boolean)
  (define-field-port
    data-table
    #f
    #f
    (property:)
    System.Data.FillErrorEventArgs
    DataTable
    System.Data.DataTable)
  (define-field-port
    errors-get
    errors-set!
    errors-update!
    (property:)
    System.Data.FillErrorEventArgs
    Errors
    System.Exception)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Data.FillErrorEventArgs
    Values
    System.Object[]))

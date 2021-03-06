(library (system data row-not-in-table-exception)
  (export new is? row-not-in-table-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.RowNotInTableException a ...)))))
  (define (is? a) (clr-is System.Data.RowNotInTableException a))
  (define (row-not-in-table-exception? a)
    (clr-is System.Data.RowNotInTableException a)))

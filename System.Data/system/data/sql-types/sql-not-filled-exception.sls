(library (system data sql-types sql-not-filled-exception)
  (export new is? sql-not-filled-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlTypes.SqlNotFilledException
             a
             ...)))))
  (define (is? a) (clr-is System.Data.SqlTypes.SqlNotFilledException a))
  (define (sql-not-filled-exception? a)
    (clr-is System.Data.SqlTypes.SqlNotFilledException a)))

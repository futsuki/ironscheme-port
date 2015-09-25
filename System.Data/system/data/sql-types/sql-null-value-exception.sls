(library (system data sql-types sql-null-value-exception)
  (export new is? sql-null-value-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlTypes.SqlNullValueException
             a
             ...)))))
  (define (is? a) (clr-is System.Data.SqlTypes.SqlNullValueException a))
  (define (sql-null-value-exception? a)
    (clr-is System.Data.SqlTypes.SqlNullValueException a)))

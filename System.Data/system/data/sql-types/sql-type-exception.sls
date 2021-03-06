(library (system data sql-types sql-type-exception)
  (export new is? sql-type-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlTypes.SqlTypeException a ...)))))
  (define (is? a) (clr-is System.Data.SqlTypes.SqlTypeException a))
  (define (sql-type-exception? a)
    (clr-is System.Data.SqlTypes.SqlTypeException a)))

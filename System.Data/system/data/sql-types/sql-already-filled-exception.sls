(library (system data sql-types sql-already-filled-exception)
  (export new is? sql-already-filled-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlTypes.SqlAlreadyFilledException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlTypes.SqlAlreadyFilledException a))
  (define (sql-already-filled-exception? a)
    (clr-is System.Data.SqlTypes.SqlAlreadyFilledException a)))

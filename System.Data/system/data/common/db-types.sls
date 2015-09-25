(library (system data common db-types)
  (export new is? db-types?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.Common.DbTypes a ...)))))
  (define (is? a) (clr-is System.Data.Common.DbTypes a))
  (define (db-types? a) (clr-is System.Data.Common.DbTypes a)))

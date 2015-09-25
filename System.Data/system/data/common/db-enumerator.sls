(library (system data common db-enumerator)
  (export new is? db-enumerator? reset move-next? current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.Common.DbEnumerator a ...)))))
  (define (is? a) (clr-is System.Data.Common.DbEnumerator a))
  (define (db-enumerator? a) (clr-is System.Data.Common.DbEnumerator a))
  (define-method-port
    reset
    System.Data.Common.DbEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Data.Common.DbEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Data.Common.DbEnumerator
    Current
    System.Object))

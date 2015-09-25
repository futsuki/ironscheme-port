(library (system data common dbcomparer-factory)
  (export new is? dbcomparer-factory? get-comparer)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.DBComparerFactory a ...)))))
  (define (is? a) (clr-is System.Data.Common.DBComparerFactory a))
  (define (dbcomparer-factory? a)
    (clr-is System.Data.Common.DBComparerFactory a))
  (define-method-port
    get-comparer
    System.Data.Common.DBComparerFactory
    GetComparer
    (static: System.Collections.IComparer System.Type System.Boolean)))

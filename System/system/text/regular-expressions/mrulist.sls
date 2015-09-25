(library (system text regular-expressions mrulist)
  (export new is? mrulist? use evict)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Text.RegularExpressions.MRUList a ...)))))
  (define (is? a) (clr-is System.Text.RegularExpressions.MRUList a))
  (define (mrulist? a)
    (clr-is System.Text.RegularExpressions.MRUList a))
  (define-method-port
    use
    System.Text.RegularExpressions.MRUList
    Use
    (System.Void System.Object))
  (define-method-port
    evict
    System.Text.RegularExpressions.MRUList
    Evict
    (System.Object)))

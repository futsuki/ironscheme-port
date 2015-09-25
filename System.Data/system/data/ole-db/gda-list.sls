(library (system data ole-db gda-list)
  (export new
          is?
          gda-list?
          data-get
          data-set!
          data-update!
          next-get
          next-set!
          next-update!
          prev-get
          prev-set!
          prev-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.OleDb.GdaList a ...)))))
  (define (is? a) (clr-is System.Data.OleDb.GdaList a))
  (define (gda-list? a) (clr-is System.Data.OleDb.GdaList a))
  (define-field-port
    data-get
    data-set!
    data-update!
    ()
    System.Data.OleDb.GdaList
    data
    System.IntPtr)
  (define-field-port
    next-get
    next-set!
    next-update!
    ()
    System.Data.OleDb.GdaList
    next
    System.IntPtr)
  (define-field-port
    prev-get
    prev-set!
    prev-update!
    ()
    System.Data.OleDb.GdaList
    prev
    System.IntPtr))

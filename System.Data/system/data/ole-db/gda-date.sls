(library (system data ole-db gda-date)
  (export new
          is?
          gda-date?
          year-get
          year-set!
          year-update!
          month-get
          month-set!
          month-update!
          day-get
          day-set!
          day-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.OleDb.GdaDate a ...)))))
  (define (is? a) (clr-is System.Data.OleDb.GdaDate a))
  (define (gda-date? a) (clr-is System.Data.OleDb.GdaDate a))
  (define-field-port
    year-get
    year-set!
    year-update!
    ()
    System.Data.OleDb.GdaDate
    year
    System.Int16)
  (define-field-port
    month-get
    month-set!
    month-update!
    ()
    System.Data.OleDb.GdaDate
    month
    System.UInt16)
  (define-field-port
    day-get
    day-set!
    day-update!
    ()
    System.Data.OleDb.GdaDate
    day
    System.UInt16))

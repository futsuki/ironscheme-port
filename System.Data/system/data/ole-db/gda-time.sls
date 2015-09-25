(library (system data ole-db gda-time)
  (export new
          is?
          gda-time?
          hour-get
          hour-set!
          hour-update!
          minute-get
          minute-set!
          minute-update!
          second-get
          second-set!
          second-update!
          timezone-get
          timezone-set!
          timezone-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.OleDb.GdaTime a ...)))))
  (define (is? a) (clr-is System.Data.OleDb.GdaTime a))
  (define (gda-time? a) (clr-is System.Data.OleDb.GdaTime a))
  (define-field-port
    hour-get
    hour-set!
    hour-update!
    ()
    System.Data.OleDb.GdaTime
    hour
    System.UInt16)
  (define-field-port
    minute-get
    minute-set!
    minute-update!
    ()
    System.Data.OleDb.GdaTime
    minute
    System.UInt16)
  (define-field-port
    second-get
    second-set!
    second-update!
    ()
    System.Data.OleDb.GdaTime
    second
    System.UInt16)
  (define-field-port
    timezone-get
    timezone-set!
    timezone-update!
    ()
    System.Data.OleDb.GdaTime
    timezone
    System.Int64))

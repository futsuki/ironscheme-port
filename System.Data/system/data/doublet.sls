(library (system data doublet)
  (export new
          is?
          doublet?
          count-get
          count-set!
          count-update!
          column-names-get
          column-names-set!
          column-names-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.Doublet a ...)))))
  (define (is? a) (clr-is System.Data.Doublet a))
  (define (doublet? a) (clr-is System.Data.Doublet a))
  (define-field-port
    count-get
    count-set!
    count-update!
    ()
    System.Data.Doublet
    count
    System.Int32)
  (define-field-port
    column-names-get
    column-names-set!
    column-names-update!
    ()
    System.Data.Doublet
    columnNames
    System.Collections.ArrayList))

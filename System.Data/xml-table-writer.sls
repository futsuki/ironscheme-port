(library (xml-table-writer)
  (export new is? xml-table-writer?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new XmlTableWriter a ...)))))
  (define (is? a) (clr-is XmlTableWriter a))
  (define (xml-table-writer? a) (clr-is XmlTableWriter a)))

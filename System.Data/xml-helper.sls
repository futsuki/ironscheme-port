(library (xml-helper)
  (export new is? xml-helper?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new XmlHelper a ...)))))
  (define (is? a) (clr-is XmlHelper a))
  (define (xml-helper? a) (clr-is XmlHelper a)))

(library (system xml serialization xml-custom-formatter)
  (export new is? xml-custom-formatter?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlCustomFormatter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlCustomFormatter a))
  (define (xml-custom-formatter? a)
    (clr-is System.Xml.Serialization.XmlCustomFormatter a)))

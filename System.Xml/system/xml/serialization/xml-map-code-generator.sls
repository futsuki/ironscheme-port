(library (system xml serialization xml-map-code-generator)
  (export new is? xml-map-code-generator?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlMapCodeGenerator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlMapCodeGenerator a))
  (define (xml-map-code-generator? a)
    (clr-is System.Xml.Serialization.XmlMapCodeGenerator a)))

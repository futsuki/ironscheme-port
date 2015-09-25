(library (system xml serialization xml-ignore-attribute)
  (export new is? xml-ignore-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlIgnoreAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlIgnoreAttribute a))
  (define (xml-ignore-attribute? a)
    (clr-is System.Xml.Serialization.XmlIgnoreAttribute a)))

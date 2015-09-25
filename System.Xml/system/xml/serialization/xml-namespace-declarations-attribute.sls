(library (system xml serialization xml-namespace-declarations-attribute)
  (export new is? xml-namespace-declarations-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlNamespaceDeclarationsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Xml.Serialization.XmlNamespaceDeclarationsAttribute
      a))
  (define (xml-namespace-declarations-attribute? a)
    (clr-is
      System.Xml.Serialization.XmlNamespaceDeclarationsAttribute
      a)))

(library (system data xml-data-reader)
  (export new is? xml-data-reader? read-xml)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.XmlDataReader a ...)))))
  (define (is? a) (clr-is System.Data.XmlDataReader a))
  (define (xml-data-reader? a) (clr-is System.Data.XmlDataReader a))
  (define-method-port
    read-xml
    System.Data.XmlDataReader
    ReadXml
    (static:
      System.Void
      System.Data.DataSet
      System.Xml.XmlReader
      System.Data.XmlReadMode)))

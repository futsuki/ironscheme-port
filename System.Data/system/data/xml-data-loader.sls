(library (system data xml-data-loader)
  (export new is? xml-data-loader? load-data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.XmlDataLoader a ...)))))
  (define (is? a) (clr-is System.Data.XmlDataLoader a))
  (define (xml-data-loader? a) (clr-is System.Data.XmlDataLoader a))
  (define-method-port
    load-data
    System.Data.XmlDataLoader
    LoadData
    (System.Data.XmlReadMode
      System.Xml.XmlReader
      System.Data.XmlReadMode)))

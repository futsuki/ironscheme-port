(library (system data xml-diff-loader)
  (export new is? xml-diff-loader? load)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.XmlDiffLoader a ...)))))
  (define (is? a) (clr-is System.Data.XmlDiffLoader a))
  (define (xml-diff-loader? a) (clr-is System.Data.XmlDiffLoader a))
  (define-method-port
    load
    System.Data.XmlDiffLoader
    Load
    (System.Void System.Xml.XmlReader)))

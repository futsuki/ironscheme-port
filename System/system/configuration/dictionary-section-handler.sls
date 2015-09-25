(library (system configuration dictionary-section-handler)
  (export new is? dictionary-section-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.DictionarySectionHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.DictionarySectionHandler a))
  (define (dictionary-section-handler? a)
    (clr-is System.Configuration.DictionarySectionHandler a))
  (define-method-port
    create
    System.Configuration.DictionarySectionHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

(library (system configuration single-tag-section-handler)
  (export new is? single-tag-section-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SingleTagSectionHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SingleTagSectionHandler a))
  (define (single-tag-section-handler? a)
    (clr-is System.Configuration.SingleTagSectionHandler a))
  (define-method-port
    create
    System.Configuration.SingleTagSectionHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

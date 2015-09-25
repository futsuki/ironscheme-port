(library (system configuration name-value-file-section-handler)
  (export new is? name-value-file-section-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.NameValueFileSectionHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.NameValueFileSectionHandler a))
  (define (name-value-file-section-handler? a)
    (clr-is System.Configuration.NameValueFileSectionHandler a))
  (define-method-port
    create
    System.Configuration.NameValueFileSectionHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

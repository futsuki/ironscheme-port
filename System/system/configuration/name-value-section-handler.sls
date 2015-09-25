(library (system configuration name-value-section-handler)
  (export new is? name-value-section-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.NameValueSectionHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.NameValueSectionHandler a))
  (define (name-value-section-handler? a)
    (clr-is System.Configuration.NameValueSectionHandler a))
  (define-method-port
    create
    System.Configuration.NameValueSectionHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

(library (system configuration ignore-section-handler)
  (export new is? ignore-section-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.IgnoreSectionHandler a ...)))))
  (define (is? a) (clr-is System.Configuration.IgnoreSectionHandler a))
  (define (ignore-section-handler? a)
    (clr-is System.Configuration.IgnoreSectionHandler a))
  (define-method-port
    create
    System.Configuration.IgnoreSectionHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

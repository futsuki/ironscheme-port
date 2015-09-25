(library (system net configuration web-request-module-handler)
  (export new is? web-request-module-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.WebRequestModuleHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.WebRequestModuleHandler a))
  (define (web-request-module-handler? a)
    (clr-is System.Net.Configuration.WebRequestModuleHandler a))
  (define-method-port
    create
    System.Net.Configuration.WebRequestModuleHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

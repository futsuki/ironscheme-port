(library (system net configuration default-proxy-handler)
  (export new is? default-proxy-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.DefaultProxyHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.DefaultProxyHandler a))
  (define (default-proxy-handler? a)
    (clr-is System.Net.Configuration.DefaultProxyHandler a))
  (define-method-port
    create
    System.Net.Configuration.DefaultProxyHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

(library (system net configuration net-configuration-handler)
  (export new is? net-configuration-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.NetConfigurationHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.NetConfigurationHandler a))
  (define (net-configuration-handler? a)
    (clr-is System.Net.Configuration.NetConfigurationHandler a))
  (define-method-port
    create
    System.Net.Configuration.NetConfigurationHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

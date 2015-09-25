(library (system net configuration net-authentication-module-handler)
  (export new is? net-authentication-module-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.NetAuthenticationModuleHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.NetAuthenticationModuleHandler a))
  (define (net-authentication-module-handler? a)
    (clr-is System.Net.Configuration.NetAuthenticationModuleHandler a))
  (define-method-port
    create
    System.Net.Configuration.NetAuthenticationModuleHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

(library (system data common db-provider-configuration-handler)
  (export new is? db-provider-configuration-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.Common.DbProviderConfigurationHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.Common.DbProviderConfigurationHandler a))
  (define (db-provider-configuration-handler? a)
    (clr-is System.Data.Common.DbProviderConfigurationHandler a))
  (define-method-port
    create
    System.Data.Common.DbProviderConfigurationHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

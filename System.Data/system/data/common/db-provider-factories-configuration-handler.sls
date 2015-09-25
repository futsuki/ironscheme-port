(library (system
          data
          common
          db-provider-factories-configuration-handler)
  (export new is? db-provider-factories-configuration-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.Common.DbProviderFactoriesConfigurationHandler
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Data.Common.DbProviderFactoriesConfigurationHandler
      a))
  (define (db-provider-factories-configuration-handler? a)
    (clr-is
      System.Data.Common.DbProviderFactoriesConfigurationHandler
      a))
  (define-method-port
    create
    System.Data.Common.DbProviderFactoriesConfigurationHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))

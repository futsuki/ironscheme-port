(library (system configuration internal-configuration-factory)
  (export new
          is?
          internal-configuration-factory?
          create
          normalize-location-sub-path)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.InternalConfigurationFactory
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.InternalConfigurationFactory a))
  (define (internal-configuration-factory? a)
    (clr-is System.Configuration.InternalConfigurationFactory a))
  (define-method-port
    create
    System.Configuration.InternalConfigurationFactory
    Create
    (System.Configuration.Configuration System.Type System.Object[]))
  (define-method-port
    normalize-location-sub-path
    System.Configuration.InternalConfigurationFactory
    NormalizeLocationSubPath
    (System.String
      System.String
      System.Configuration.Internal.IConfigErrorInfo)))

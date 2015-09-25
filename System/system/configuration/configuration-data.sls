(library (system configuration configuration-data)
  (export new is? configuration-data? get-config load? load-string?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.ConfigurationData a ...)))))
  (define (is? a) (clr-is System.Configuration.ConfigurationData a))
  (define (configuration-data? a)
    (clr-is System.Configuration.ConfigurationData a))
  (define-method-port
    get-config
    System.Configuration.ConfigurationData
    GetConfig
    (System.Object System.String))
  (define-method-port
    load?
    System.Configuration.ConfigurationData
    Load
    (System.Boolean System.String))
  (define-method-port
    load-string?
    System.Configuration.ConfigurationData
    LoadString
    (System.Boolean System.String)))

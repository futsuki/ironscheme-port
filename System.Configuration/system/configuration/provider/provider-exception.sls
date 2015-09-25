(library (system configuration provider provider-exception)
  (export new is? provider-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.Provider.ProviderException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.Provider.ProviderException a))
  (define (provider-exception? a)
    (clr-is System.Configuration.Provider.ProviderException a)))

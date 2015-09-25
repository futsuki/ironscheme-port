(library (system runtime remoting provider-data)
  (export new is? provider-data? copy-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.ProviderData a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.ProviderData a))
  (define (provider-data? a)
    (clr-is System.Runtime.Remoting.ProviderData a))
  (define-method-port
    copy-from
    System.Runtime.Remoting.ProviderData
    CopyFrom
    (System.Void System.Runtime.Remoting.ProviderData)))

(library (system security policy mono-trust-manager)
  (export new
          is?
          mono-trust-manager?
          from-xml
          to-xml
          determine-application-trust)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.MonoTrustManager a ...)))))
  (define (is? a) (clr-is System.Security.Policy.MonoTrustManager a))
  (define (mono-trust-manager? a)
    (clr-is System.Security.Policy.MonoTrustManager a))
  (define-method-port
    from-xml
    System.Security.Policy.MonoTrustManager
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    to-xml
    System.Security.Policy.MonoTrustManager
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    determine-application-trust
    System.Security.Policy.MonoTrustManager
    DetermineApplicationTrust
    (System.Security.Policy.ApplicationTrust
      System.ActivationContext
      System.Security.Policy.TrustManagerContext)))

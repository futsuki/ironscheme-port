(library (mono security x509 extensions key-usage-extension)
  (export new
          is?
          key-usage-extension?
          support?
          to-string
          key-usage-get
          key-usage-set!
          key-usage-update!
          name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Security.X509.Extensions.KeyUsageExtension
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Security.X509.Extensions.KeyUsageExtension a))
  (define (key-usage-extension? a)
    (clr-is Mono.Security.X509.Extensions.KeyUsageExtension a))
  (define-method-port
    support?
    Mono.Security.X509.Extensions.KeyUsageExtension
    Support
    (System.Boolean Mono.Security.X509.Extensions.KeyUsages))
  (define-method-port
    to-string
    Mono.Security.X509.Extensions.KeyUsageExtension
    ToString
    (System.String))
  (define-field-port
    key-usage-get
    key-usage-set!
    key-usage-update!
    (property:)
    Mono.Security.X509.Extensions.KeyUsageExtension
    KeyUsage
    Mono.Security.X509.Extensions.KeyUsages)
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Security.X509.Extensions.KeyUsageExtension
    Name
    System.String))

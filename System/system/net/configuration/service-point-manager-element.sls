(library (system net configuration service-point-manager-element)
  (export new
          is?
          service-point-manager-element?
          check-certificate-name?-get
          check-certificate-name?-set!
          check-certificate-name?-update!
          check-certificate-revocation-list?-get
          check-certificate-revocation-list?-set!
          check-certificate-revocation-list?-update!
          dns-refresh-timeout-get
          dns-refresh-timeout-set!
          dns-refresh-timeout-update!
          enable-dns-round-robin?-get
          enable-dns-round-robin?-set!
          enable-dns-round-robin?-update!
          expect100-continue?-get
          expect100-continue?-set!
          expect100-continue?-update!
          use-nagle-algorithm?-get
          use-nagle-algorithm?-set!
          use-nagle-algorithm?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.ServicePointManagerElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.ServicePointManagerElement a))
  (define (service-point-manager-element? a)
    (clr-is System.Net.Configuration.ServicePointManagerElement a))
  (define-field-port
    check-certificate-name?-get
    check-certificate-name?-set!
    check-certificate-name?-update!
    (property:)
    System.Net.Configuration.ServicePointManagerElement
    CheckCertificateName
    System.Boolean)
  (define-field-port
    check-certificate-revocation-list?-get
    check-certificate-revocation-list?-set!
    check-certificate-revocation-list?-update!
    (property:)
    System.Net.Configuration.ServicePointManagerElement
    CheckCertificateRevocationList
    System.Boolean)
  (define-field-port
    dns-refresh-timeout-get
    dns-refresh-timeout-set!
    dns-refresh-timeout-update!
    (property:)
    System.Net.Configuration.ServicePointManagerElement
    DnsRefreshTimeout
    System.Int32)
  (define-field-port
    enable-dns-round-robin?-get
    enable-dns-round-robin?-set!
    enable-dns-round-robin?-update!
    (property:)
    System.Net.Configuration.ServicePointManagerElement
    EnableDnsRoundRobin
    System.Boolean)
  (define-field-port
    expect100-continue?-get
    expect100-continue?-set!
    expect100-continue?-update!
    (property:)
    System.Net.Configuration.ServicePointManagerElement
    Expect100Continue
    System.Boolean)
  (define-field-port
    use-nagle-algorithm?-get
    use-nagle-algorithm?-set!
    use-nagle-algorithm?-update!
    (property:)
    System.Net.Configuration.ServicePointManagerElement
    UseNagleAlgorithm
    System.Boolean))

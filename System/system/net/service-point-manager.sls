(library (system net service-point-manager)
  (export is?
          service-point-manager?
          find-service-point
          default-non-persistent-connection-limit
          default-persistent-connection-limit
          certificate-policy-get
          certificate-policy-set!
          certificate-policy-update!
          check-certificate-revocation-list?-get
          check-certificate-revocation-list?-set!
          check-certificate-revocation-list?-update!
          default-connection-limit-get
          default-connection-limit-set!
          default-connection-limit-update!
          dns-refresh-timeout-get
          dns-refresh-timeout-set!
          dns-refresh-timeout-update!
          enable-dns-round-robin?-get
          enable-dns-round-robin?-set!
          enable-dns-round-robin?-update!
          max-service-point-idle-time-get
          max-service-point-idle-time-set!
          max-service-point-idle-time-update!
          max-service-points-get
          max-service-points-set!
          max-service-points-update!
          security-protocol-get
          security-protocol-set!
          security-protocol-update!
          server-certificate-validation-callback-get
          server-certificate-validation-callback-set!
          server-certificate-validation-callback-update!
          expect100-continue?-get
          expect100-continue?-set!
          expect100-continue?-update!
          use-nagle-algorithm?-get
          use-nagle-algorithm?-set!
          use-nagle-algorithm?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.ServicePointManager a))
  (define (service-point-manager? a)
    (clr-is System.Net.ServicePointManager a))
  (define-method-port
    find-service-point
    System.Net.ServicePointManager
    FindServicePoint
    (static: System.Net.ServicePoint System.Uri System.Net.IWebProxy)
    (static: System.Net.ServicePoint System.String System.Net.IWebProxy)
    (static: System.Net.ServicePoint System.Uri))
  (define-field-port
    default-non-persistent-connection-limit
    #f
    #f
    (static:)
    System.Net.ServicePointManager
    DefaultNonPersistentConnectionLimit
    System.Int32)
  (define-field-port
    default-persistent-connection-limit
    #f
    #f
    (static:)
    System.Net.ServicePointManager
    DefaultPersistentConnectionLimit
    System.Int32)
  (define-field-port
    certificate-policy-get
    certificate-policy-set!
    certificate-policy-update!
    (static: property:)
    System.Net.ServicePointManager
    CertificatePolicy
    System.Net.ICertificatePolicy)
  (define-field-port
    check-certificate-revocation-list?-get
    check-certificate-revocation-list?-set!
    check-certificate-revocation-list?-update!
    (static: property:)
    System.Net.ServicePointManager
    CheckCertificateRevocationList
    System.Boolean)
  (define-field-port
    default-connection-limit-get
    default-connection-limit-set!
    default-connection-limit-update!
    (static: property:)
    System.Net.ServicePointManager
    DefaultConnectionLimit
    System.Int32)
  (define-field-port
    dns-refresh-timeout-get
    dns-refresh-timeout-set!
    dns-refresh-timeout-update!
    (static: property:)
    System.Net.ServicePointManager
    DnsRefreshTimeout
    System.Int32)
  (define-field-port
    enable-dns-round-robin?-get
    enable-dns-round-robin?-set!
    enable-dns-round-robin?-update!
    (static: property:)
    System.Net.ServicePointManager
    EnableDnsRoundRobin
    System.Boolean)
  (define-field-port
    max-service-point-idle-time-get
    max-service-point-idle-time-set!
    max-service-point-idle-time-update!
    (static: property:)
    System.Net.ServicePointManager
    MaxServicePointIdleTime
    System.Int32)
  (define-field-port
    max-service-points-get
    max-service-points-set!
    max-service-points-update!
    (static: property:)
    System.Net.ServicePointManager
    MaxServicePoints
    System.Int32)
  (define-field-port
    security-protocol-get
    security-protocol-set!
    security-protocol-update!
    (static: property:)
    System.Net.ServicePointManager
    SecurityProtocol
    System.Net.SecurityProtocolType)
  (define-field-port
    server-certificate-validation-callback-get
    server-certificate-validation-callback-set!
    server-certificate-validation-callback-update!
    (static: property:)
    System.Net.ServicePointManager
    ServerCertificateValidationCallback
    System.Net.Security.RemoteCertificateValidationCallback)
  (define-field-port
    expect100-continue?-get
    expect100-continue?-set!
    expect100-continue?-update!
    (static: property:)
    System.Net.ServicePointManager
    Expect100Continue
    System.Boolean)
  (define-field-port
    use-nagle-algorithm?-get
    use-nagle-algorithm?-set!
    use-nagle-algorithm?-update!
    (static: property:)
    System.Net.ServicePointManager
    UseNagleAlgorithm
    System.Boolean))

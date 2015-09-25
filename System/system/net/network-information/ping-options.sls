(library (system net network-information ping-options)
  (export new
          is?
          ping-options?
          dont-fragment?-get
          dont-fragment?-set!
          dont-fragment?-update!
          ttl-get
          ttl-set!
          ttl-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.NetworkInformation.PingOptions a ...)))))
  (define (is? a) (clr-is System.Net.NetworkInformation.PingOptions a))
  (define (ping-options? a)
    (clr-is System.Net.NetworkInformation.PingOptions a))
  (define-field-port
    dont-fragment?-get
    dont-fragment?-set!
    dont-fragment?-update!
    (property:)
    System.Net.NetworkInformation.PingOptions
    DontFragment
    System.Boolean)
  (define-field-port
    ttl-get
    ttl-set!
    ttl-update!
    (property:)
    System.Net.NetworkInformation.PingOptions
    Ttl
    System.Int32))

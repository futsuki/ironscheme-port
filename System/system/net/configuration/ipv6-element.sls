(library (system net configuration ipv6-element)
  (export new
          is?
          ipv6-element?
          enabled?-get
          enabled?-set!
          enabled?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Configuration.Ipv6Element a ...)))))
  (define (is? a) (clr-is System.Net.Configuration.Ipv6Element a))
  (define (ipv6-element? a)
    (clr-is System.Net.Configuration.Ipv6Element a))
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.Net.Configuration.Ipv6Element
    Enabled
    System.Boolean))

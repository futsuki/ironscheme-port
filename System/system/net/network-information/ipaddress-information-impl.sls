(library (system net network-information ipaddress-information-impl)
  (export new
          is?
          ipaddress-information-impl?
          address
          is-dns-eligible?
          is-transient?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.IPAddressInformationImpl
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.IPAddressInformationImpl a))
  (define (ipaddress-information-impl? a)
    (clr-is System.Net.NetworkInformation.IPAddressInformationImpl a))
  (define-field-port
    address
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressInformationImpl
    Address
    System.Net.IPAddress)
  (define-field-port
    is-dns-eligible?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressInformationImpl
    IsDnsEligible
    System.Boolean)
  (define-field-port
    is-transient?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressInformationImpl
    IsTransient
    System.Boolean))

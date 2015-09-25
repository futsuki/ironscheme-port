(library (system net sockets ipv6-multicast-option)
  (export new
          is?
          ipv6-multicast-option?
          group-get
          group-set!
          group-update!
          interface-index-get
          interface-index-set!
          interface-index-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Sockets.IPv6MulticastOption a ...)))))
  (define (is? a) (clr-is System.Net.Sockets.IPv6MulticastOption a))
  (define (ipv6-multicast-option? a)
    (clr-is System.Net.Sockets.IPv6MulticastOption a))
  (define-field-port
    group-get
    group-set!
    group-update!
    (property:)
    System.Net.Sockets.IPv6MulticastOption
    Group
    System.Net.IPAddress)
  (define-field-port
    interface-index-get
    interface-index-set!
    interface-index-update!
    (property:)
    System.Net.Sockets.IPv6MulticastOption
    InterfaceIndex
    System.Int64))

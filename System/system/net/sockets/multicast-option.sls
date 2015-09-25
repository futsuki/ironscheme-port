(library (system net sockets multicast-option)
  (export new
          is?
          multicast-option?
          group-get
          group-set!
          group-update!
          local-address-get
          local-address-set!
          local-address-update!
          interface-index-get
          interface-index-set!
          interface-index-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Sockets.MulticastOption a ...)))))
  (define (is? a) (clr-is System.Net.Sockets.MulticastOption a))
  (define (multicast-option? a)
    (clr-is System.Net.Sockets.MulticastOption a))
  (define-field-port
    group-get
    group-set!
    group-update!
    (property:)
    System.Net.Sockets.MulticastOption
    Group
    System.Net.IPAddress)
  (define-field-port
    local-address-get
    local-address-set!
    local-address-update!
    (property:)
    System.Net.Sockets.MulticastOption
    LocalAddress
    System.Net.IPAddress)
  (define-field-port
    interface-index-get
    interface-index-set!
    interface-index-update!
    (property:)
    System.Net.Sockets.MulticastOption
    InterfaceIndex
    System.Int32))

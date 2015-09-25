(library (system net network-information ping-reply)
  (export is? ping-reply? address buffer options roundtrip-time status)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.NetworkInformation.PingReply a))
  (define (ping-reply? a)
    (clr-is System.Net.NetworkInformation.PingReply a))
  (define-field-port
    address
    #f
    #f
    (property:)
    System.Net.NetworkInformation.PingReply
    Address
    System.Net.IPAddress)
  (define-field-port
    buffer
    #f
    #f
    (property:)
    System.Net.NetworkInformation.PingReply
    Buffer
    System.Byte[])
  (define-field-port
    options
    #f
    #f
    (property:)
    System.Net.NetworkInformation.PingReply
    Options
    System.Net.NetworkInformation.PingOptions)
  (define-field-port
    roundtrip-time
    #f
    #f
    (property:)
    System.Net.NetworkInformation.PingReply
    RoundtripTime
    System.Int64)
  (define-field-port
    status
    #f
    #f
    (property:)
    System.Net.NetworkInformation.PingReply
    Status
    System.Net.NetworkInformation.IPStatus))

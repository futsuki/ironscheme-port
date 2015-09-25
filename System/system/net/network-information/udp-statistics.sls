(library (system net network-information udp-statistics)
  (export is?
          udp-statistics?
          datagrams-received
          datagrams-sent
          incoming-datagrams-discarded
          incoming-datagrams-with-errors
          udp-listeners)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.UdpStatistics a))
  (define (udp-statistics? a)
    (clr-is System.Net.NetworkInformation.UdpStatistics a))
  (define-field-port
    datagrams-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UdpStatistics
    DatagramsReceived
    System.Int64)
  (define-field-port
    datagrams-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UdpStatistics
    DatagramsSent
    System.Int64)
  (define-field-port
    incoming-datagrams-discarded
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UdpStatistics
    IncomingDatagramsDiscarded
    System.Int64)
  (define-field-port
    incoming-datagrams-with-errors
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UdpStatistics
    IncomingDatagramsWithErrors
    System.Int64)
  (define-field-port
    udp-listeners
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UdpStatistics
    UdpListeners
    System.Int32))

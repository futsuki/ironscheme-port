(library (system net network-information mib-udp-statistics)
  (export new
          is?
          mib-udp-statistics?
          datagrams-received
          datagrams-sent
          incoming-datagrams-discarded
          incoming-datagrams-with-errors
          udp-listeners)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.MibUdpStatistics
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.MibUdpStatistics a))
  (define (mib-udp-statistics? a)
    (clr-is System.Net.NetworkInformation.MibUdpStatistics a))
  (define-field-port
    datagrams-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibUdpStatistics
    DatagramsReceived
    System.Int64)
  (define-field-port
    datagrams-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibUdpStatistics
    DatagramsSent
    System.Int64)
  (define-field-port
    incoming-datagrams-discarded
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibUdpStatistics
    IncomingDatagramsDiscarded
    System.Int64)
  (define-field-port
    incoming-datagrams-with-errors
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibUdpStatistics
    IncomingDatagramsWithErrors
    System.Int64)
  (define-field-port
    udp-listeners
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibUdpStatistics
    UdpListeners
    System.Int32))

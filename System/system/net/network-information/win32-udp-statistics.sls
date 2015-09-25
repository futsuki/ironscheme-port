(library (system net network-information win32-udp-statistics)
  (export new
          is?
          win32-udp-statistics?
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
             System.Net.NetworkInformation.Win32UdpStatistics
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.Win32UdpStatistics a))
  (define (win32-udp-statistics? a)
    (clr-is System.Net.NetworkInformation.Win32UdpStatistics a))
  (define-field-port
    datagrams-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32UdpStatistics
    DatagramsReceived
    System.Int64)
  (define-field-port
    datagrams-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32UdpStatistics
    DatagramsSent
    System.Int64)
  (define-field-port
    incoming-datagrams-discarded
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32UdpStatistics
    IncomingDatagramsDiscarded
    System.Int64)
  (define-field-port
    incoming-datagrams-with-errors
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32UdpStatistics
    IncomingDatagramsWithErrors
    System.Int64)
  (define-field-port
    udp-listeners
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32UdpStatistics
    UdpListeners
    System.Int32))

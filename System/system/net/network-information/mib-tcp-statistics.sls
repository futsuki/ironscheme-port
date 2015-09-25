(library (system net network-information mib-tcp-statistics)
  (export new
          is?
          mib-tcp-statistics?
          connections-accepted
          connections-initiated
          cumulative-connections
          current-connections
          errors-received
          failed-connection-attempts
          maximum-connections
          maximum-transmission-timeout
          minimum-transmission-timeout
          reset-connections
          resets-sent
          segments-received
          segments-resent
          segments-sent)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.MibTcpStatistics
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.MibTcpStatistics a))
  (define (mib-tcp-statistics? a)
    (clr-is System.Net.NetworkInformation.MibTcpStatistics a))
  (define-field-port
    connections-accepted
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    ConnectionsAccepted
    System.Int64)
  (define-field-port
    connections-initiated
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    ConnectionsInitiated
    System.Int64)
  (define-field-port
    cumulative-connections
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    CumulativeConnections
    System.Int64)
  (define-field-port
    current-connections
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    CurrentConnections
    System.Int64)
  (define-field-port
    errors-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    ErrorsReceived
    System.Int64)
  (define-field-port
    failed-connection-attempts
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    FailedConnectionAttempts
    System.Int64)
  (define-field-port
    maximum-connections
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    MaximumConnections
    System.Int64)
  (define-field-port
    maximum-transmission-timeout
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    MaximumTransmissionTimeout
    System.Int64)
  (define-field-port
    minimum-transmission-timeout
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    MinimumTransmissionTimeout
    System.Int64)
  (define-field-port
    reset-connections
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    ResetConnections
    System.Int64)
  (define-field-port
    resets-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    ResetsSent
    System.Int64)
  (define-field-port
    segments-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    SegmentsReceived
    System.Int64)
  (define-field-port
    segments-resent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    SegmentsResent
    System.Int64)
  (define-field-port
    segments-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MibTcpStatistics
    SegmentsSent
    System.Int64))
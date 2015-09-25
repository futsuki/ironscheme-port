(library (system net network-information tcp-connection-information)
  (export is?
          tcp-connection-information?
          local-end-point
          remote-end-point
          state)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.TcpConnectionInformation a))
  (define (tcp-connection-information? a)
    (clr-is System.Net.NetworkInformation.TcpConnectionInformation a))
  (define-field-port
    local-end-point
    #f
    #f
    (property:)
    System.Net.NetworkInformation.TcpConnectionInformation
    LocalEndPoint
    System.Net.IPEndPoint)
  (define-field-port
    remote-end-point
    #f
    #f
    (property:)
    System.Net.NetworkInformation.TcpConnectionInformation
    RemoteEndPoint
    System.Net.IPEndPoint)
  (define-field-port
    state
    #f
    #f
    (property:)
    System.Net.NetworkInformation.TcpConnectionInformation
    State
    System.Net.NetworkInformation.TcpState))

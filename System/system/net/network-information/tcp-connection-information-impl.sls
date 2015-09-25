(library (system
          net
          network-information
          tcp-connection-information-impl)
  (export new
          is?
          tcp-connection-information-impl?
          local-end-point
          remote-end-point
          state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.TcpConnectionInformationImpl
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.TcpConnectionInformationImpl
      a))
  (define (tcp-connection-information-impl? a)
    (clr-is
      System.Net.NetworkInformation.TcpConnectionInformationImpl
      a))
  (define-field-port
    local-end-point
    #f
    #f
    (property:)
    System.Net.NetworkInformation.TcpConnectionInformationImpl
    LocalEndPoint
    System.Net.IPEndPoint)
  (define-field-port
    remote-end-point
    #f
    #f
    (property:)
    System.Net.NetworkInformation.TcpConnectionInformationImpl
    RemoteEndPoint
    System.Net.IPEndPoint)
  (define-field-port
    state
    #f
    #f
    (property:)
    System.Net.NetworkInformation.TcpConnectionInformationImpl
    State
    System.Net.NetworkInformation.TcpState))

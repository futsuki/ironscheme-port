(library (system net sockets udp-client)
  (export new
          is?
          udp-client?
          connect
          end-send
          join-multicast-group
          receive
          begin-send
          send
          end-receive
          drop-multicast-group
          begin-receive
          close
          client-get
          client-set!
          client-update!
          available
          dont-fragment?-get
          dont-fragment?-set!
          dont-fragment?-update!
          enable-broadcast?-get
          enable-broadcast?-set!
          enable-broadcast?-update!
          exclusive-address-use?-get
          exclusive-address-use?-set!
          exclusive-address-use?-update!
          multicast-loopback?-get
          multicast-loopback?-set!
          multicast-loopback?-update!
          ttl-get
          ttl-set!
          ttl-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Sockets.UdpClient a ...)))))
  (define (is? a) (clr-is System.Net.Sockets.UdpClient a))
  (define (udp-client? a) (clr-is System.Net.Sockets.UdpClient a))
  (define-method-port
    connect
    System.Net.Sockets.UdpClient
    Connect
    (System.Void System.String System.Int32)
    (System.Void System.Net.IPAddress System.Int32)
    (System.Void System.Net.IPEndPoint))
  (define-method-port
    end-send
    System.Net.Sockets.UdpClient
    EndSend
    (System.Int32 System.IAsyncResult))
  (define-method-port
    join-multicast-group
    System.Net.Sockets.UdpClient
    JoinMulticastGroup
    (System.Void System.Net.IPAddress System.Net.IPAddress)
    (System.Void System.Net.IPAddress System.Int32)
    (System.Void System.Int32 System.Net.IPAddress)
    (System.Void System.Net.IPAddress))
  (define-method-port
    receive
    System.Net.Sockets.UdpClient
    Receive
    (System.Byte[] System.Net.IPEndPoint&))
  (define-method-port
    begin-send
    System.Net.Sockets.UdpClient
    BeginSend
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.String
      System.Int32
      System.AsyncCallback
      System.Object)
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Net.IPEndPoint
      System.AsyncCallback
      System.Object)
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    send
    System.Net.Sockets.UdpClient
    Send
    (System.Int32 System.Byte[] System.Int32 System.String System.Int32)
    (System.Int32 System.Byte[] System.Int32 System.Net.IPEndPoint)
    (System.Int32 System.Byte[] System.Int32))
  (define-method-port
    end-receive
    System.Net.Sockets.UdpClient
    EndReceive
    (System.Byte[] System.IAsyncResult System.Net.IPEndPoint&))
  (define-method-port
    drop-multicast-group
    System.Net.Sockets.UdpClient
    DropMulticastGroup
    (System.Void System.Net.IPAddress System.Int32)
    (System.Void System.Net.IPAddress))
  (define-method-port
    begin-receive
    System.Net.Sockets.UdpClient
    BeginReceive
    (System.IAsyncResult System.AsyncCallback System.Object))
  (define-method-port
    close
    System.Net.Sockets.UdpClient
    Close
    (System.Void))
  (define-field-port
    client-get
    client-set!
    client-update!
    (property:)
    System.Net.Sockets.UdpClient
    Client
    System.Net.Sockets.Socket)
  (define-field-port
    available
    #f
    #f
    (property:)
    System.Net.Sockets.UdpClient
    Available
    System.Int32)
  (define-field-port
    dont-fragment?-get
    dont-fragment?-set!
    dont-fragment?-update!
    (property:)
    System.Net.Sockets.UdpClient
    DontFragment
    System.Boolean)
  (define-field-port
    enable-broadcast?-get
    enable-broadcast?-set!
    enable-broadcast?-update!
    (property:)
    System.Net.Sockets.UdpClient
    EnableBroadcast
    System.Boolean)
  (define-field-port
    exclusive-address-use?-get
    exclusive-address-use?-set!
    exclusive-address-use?-update!
    (property:)
    System.Net.Sockets.UdpClient
    ExclusiveAddressUse
    System.Boolean)
  (define-field-port
    multicast-loopback?-get
    multicast-loopback?-set!
    multicast-loopback?-update!
    (property:)
    System.Net.Sockets.UdpClient
    MulticastLoopback
    System.Boolean)
  (define-field-port
    ttl-get
    ttl-set!
    ttl-update!
    (property:)
    System.Net.Sockets.UdpClient
    Ttl
    System.Int16))

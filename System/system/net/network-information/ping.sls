(library (system net network-information ping)
  (export new is? ping? send-async send send-async-cancel)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.NetworkInformation.Ping a ...)))))
  (define (is? a) (clr-is System.Net.NetworkInformation.Ping a))
  (define (ping? a) (clr-is System.Net.NetworkInformation.Ping a))
  (define-method-port
    send-async
    System.Net.NetworkInformation.Ping
    SendAsync
    (System.Void
      System.Net.IPAddress
      System.Int32
      System.Byte[]
      System.Net.NetworkInformation.PingOptions
      System.Object)
    (System.Void System.String System.Object)
    (System.Void System.String System.Int32 System.Object)
    (System.Void
      System.String
      System.Int32
      System.Byte[]
      System.Net.NetworkInformation.PingOptions
      System.Object)
    (System.Void System.String System.Int32 System.Byte[] System.Object)
    (System.Void System.Net.IPAddress System.Object)
    (System.Void System.Net.IPAddress System.Int32 System.Object)
    (System.Void
      System.Net.IPAddress
      System.Int32
      System.Byte[]
      System.Object))
  (define-method-port
    send
    System.Net.NetworkInformation.Ping
    Send
    (System.Net.NetworkInformation.PingReply
      System.Net.IPAddress
      System.Int32
      System.Byte[]
      System.Net.NetworkInformation.PingOptions)
    (System.Net.NetworkInformation.PingReply
      System.String
      System.Int32
      System.Byte[]
      System.Net.NetworkInformation.PingOptions)
    (System.Net.NetworkInformation.PingReply
      System.String
      System.Int32
      System.Byte[])
    (System.Net.NetworkInformation.PingReply System.String System.Int32)
    (System.Net.NetworkInformation.PingReply System.String)
    (System.Net.NetworkInformation.PingReply
      System.Net.IPAddress
      System.Int32
      System.Byte[])
    (System.Net.NetworkInformation.PingReply
      System.Net.IPAddress
      System.Int32)
    (System.Net.NetworkInformation.PingReply System.Net.IPAddress))
  (define-method-port
    send-async-cancel
    System.Net.NetworkInformation.Ping
    SendAsyncCancel
    (System.Void)))

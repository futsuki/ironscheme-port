(library (system net dns)
  (export is?
          dns?
          begin-get-host-by-name
          get-host-by-address
          end-get-host-entry
          begin-get-host-entry
          resolve
          get-host-name
          end-get-host-addresses
          begin-get-host-addresses
          end-get-host-by-name
          get-host-by-name
          end-resolve
          get-host-addresses
          get-host-entry
          begin-resolve)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.Dns a))
  (define (dns? a) (clr-is System.Net.Dns a))
  (define-method-port
    begin-get-host-by-name
    System.Net.Dns
    BeginGetHostByName
    (static:
      System.IAsyncResult
      System.String
      System.AsyncCallback
      System.Object))
  (define-method-port
    get-host-by-address
    System.Net.Dns
    GetHostByAddress
    (static: System.Net.IPHostEntry System.String)
    (static: System.Net.IPHostEntry System.Net.IPAddress))
  (define-method-port
    end-get-host-entry
    System.Net.Dns
    EndGetHostEntry
    (static: System.Net.IPHostEntry System.IAsyncResult))
  (define-method-port
    begin-get-host-entry
    System.Net.Dns
    BeginGetHostEntry
    (static:
      System.IAsyncResult
      System.Net.IPAddress
      System.AsyncCallback
      System.Object)
    (static:
      System.IAsyncResult
      System.String
      System.AsyncCallback
      System.Object))
  (define-method-port
    resolve
    System.Net.Dns
    Resolve
    (static: System.Net.IPHostEntry System.String))
  (define-method-port
    get-host-name
    System.Net.Dns
    GetHostName
    (static: System.String))
  (define-method-port
    end-get-host-addresses
    System.Net.Dns
    EndGetHostAddresses
    (static: System.Net.IPAddress[] System.IAsyncResult))
  (define-method-port
    begin-get-host-addresses
    System.Net.Dns
    BeginGetHostAddresses
    (static:
      System.IAsyncResult
      System.String
      System.AsyncCallback
      System.Object))
  (define-method-port
    end-get-host-by-name
    System.Net.Dns
    EndGetHostByName
    (static: System.Net.IPHostEntry System.IAsyncResult))
  (define-method-port
    get-host-by-name
    System.Net.Dns
    GetHostByName
    (static: System.Net.IPHostEntry System.String))
  (define-method-port
    end-resolve
    System.Net.Dns
    EndResolve
    (static: System.Net.IPHostEntry System.IAsyncResult))
  (define-method-port
    get-host-addresses
    System.Net.Dns
    GetHostAddresses
    (static: System.Net.IPAddress[] System.String))
  (define-method-port
    get-host-entry
    System.Net.Dns
    GetHostEntry
    (static: System.Net.IPHostEntry System.Net.IPAddress)
    (static: System.Net.IPHostEntry System.String))
  (define-method-port
    begin-resolve
    System.Net.Dns
    BeginResolve
    (static:
      System.IAsyncResult
      System.String
      System.AsyncCallback
      System.Object)))

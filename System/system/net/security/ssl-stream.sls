(library (system net security ssl-stream)
  (export new
          is?
          ssl-stream?
          read
          set-length
          authenticate-as-client
          end-authenticate-as-server
          begin-authenticate-as-client
          end-write
          write
          begin-write
          authenticate-as-server
          end-read
          begin-authenticate-as-server
          end-authenticate-as-client
          begin-read
          seek
          flush
          can-read?
          can-seek?
          can-timeout?
          can-write?
          length
          position-get
          position-set!
          position-update!
          is-authenticated?
          is-encrypted?
          is-mutually-authenticated?
          is-server?
          is-signed?
          read-timeout-get
          read-timeout-set!
          read-timeout-update!
          write-timeout-get
          write-timeout-set!
          write-timeout-update!
          check-cert-revocation-status?
          cipher-algorithm
          cipher-strength
          hash-algorithm
          hash-strength
          key-exchange-algorithm
          key-exchange-strength
          local-certificate
          remote-certificate
          ssl-protocol)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Security.SslStream a ...)))))
  (define (is? a) (clr-is System.Net.Security.SslStream a))
  (define (ssl-stream? a) (clr-is System.Net.Security.SslStream a))
  (define-method-port
    read
    System.Net.Security.SslStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    set-length
    System.Net.Security.SslStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    authenticate-as-client
    System.Net.Security.SslStream
    AuthenticateAsClient
    (System.Void
      System.String
      System.Security.Cryptography.X509Certificates.X509CertificateCollection
      System.Security.Authentication.SslProtocols
      System.Boolean)
    (System.Void System.String))
  (define-method-port
    end-authenticate-as-server
    System.Net.Security.SslStream
    EndAuthenticateAsServer
    (System.Void System.IAsyncResult))
  (define-method-port
    begin-authenticate-as-client
    System.Net.Security.SslStream
    BeginAuthenticateAsClient
    (System.IAsyncResult
      System.String
      System.Security.Cryptography.X509Certificates.X509CertificateCollection
      System.Security.Authentication.SslProtocols
      System.Boolean
      System.AsyncCallback
      System.Object)
    (System.IAsyncResult
      System.String
      System.AsyncCallback
      System.Object))
  (define-method-port
    end-write
    System.Net.Security.SslStream
    EndWrite
    (System.Void System.IAsyncResult))
  (define-method-port
    write
    System.Net.Security.SslStream
    Write
    (System.Void System.Byte[])
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    begin-write
    System.Net.Security.SslStream
    BeginWrite
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    authenticate-as-server
    System.Net.Security.SslStream
    AuthenticateAsServer
    (System.Void
      System.Security.Cryptography.X509Certificates.X509Certificate
      System.Boolean
      System.Security.Authentication.SslProtocols
      System.Boolean)
    (System.Void
      System.Security.Cryptography.X509Certificates.X509Certificate))
  (define-method-port
    end-read
    System.Net.Security.SslStream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    begin-authenticate-as-server
    System.Net.Security.SslStream
    BeginAuthenticateAsServer
    (System.IAsyncResult
      System.Security.Cryptography.X509Certificates.X509Certificate
      System.Boolean
      System.Security.Authentication.SslProtocols
      System.Boolean
      System.AsyncCallback
      System.Object)
    (System.IAsyncResult
      System.Security.Cryptography.X509Certificates.X509Certificate
      System.AsyncCallback
      System.Object))
  (define-method-port
    end-authenticate-as-client
    System.Net.Security.SslStream
    EndAuthenticateAsClient
    (System.Void System.IAsyncResult))
  (define-method-port
    begin-read
    System.Net.Security.SslStream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    seek
    System.Net.Security.SslStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.Net.Security.SslStream
    Flush
    (System.Void))
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-timeout?
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    CanTimeout
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    CanWrite
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.Net.Security.SslStream
    Position
    System.Int64)
  (define-field-port
    is-authenticated?
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    IsAuthenticated
    System.Boolean)
  (define-field-port
    is-encrypted?
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    IsEncrypted
    System.Boolean)
  (define-field-port
    is-mutually-authenticated?
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    IsMutuallyAuthenticated
    System.Boolean)
  (define-field-port
    is-server?
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    IsServer
    System.Boolean)
  (define-field-port
    is-signed?
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    IsSigned
    System.Boolean)
  (define-field-port
    read-timeout-get
    read-timeout-set!
    read-timeout-update!
    (property:)
    System.Net.Security.SslStream
    ReadTimeout
    System.Int32)
  (define-field-port
    write-timeout-get
    write-timeout-set!
    write-timeout-update!
    (property:)
    System.Net.Security.SslStream
    WriteTimeout
    System.Int32)
  (define-field-port
    check-cert-revocation-status?
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    CheckCertRevocationStatus
    System.Boolean)
  (define-field-port
    cipher-algorithm
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    CipherAlgorithm
    System.Security.Authentication.CipherAlgorithmType)
  (define-field-port
    cipher-strength
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    CipherStrength
    System.Int32)
  (define-field-port
    hash-algorithm
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    HashAlgorithm
    System.Security.Authentication.HashAlgorithmType)
  (define-field-port
    hash-strength
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    HashStrength
    System.Int32)
  (define-field-port
    key-exchange-algorithm
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    KeyExchangeAlgorithm
    System.Security.Authentication.ExchangeAlgorithmType)
  (define-field-port
    key-exchange-strength
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    KeyExchangeStrength
    System.Int32)
  (define-field-port
    local-certificate
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    LocalCertificate
    System.Security.Cryptography.X509Certificates.X509Certificate)
  (define-field-port
    remote-certificate
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    RemoteCertificate
    System.Security.Cryptography.X509Certificates.X509Certificate)
  (define-field-port
    ssl-protocol
    #f
    #f
    (property:)
    System.Net.Security.SslStream
    SslProtocol
    System.Security.Authentication.SslProtocols))

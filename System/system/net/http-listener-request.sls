(library (system net http-listener-request)
  (export is?
          http-listener-request?
          end-get-client-certificate
          get-client-certificate
          begin-get-client-certificate
          accept-types
          client-certificate-error
          content-encoding
          content-length64
          content-type
          cookies
          has-entity-body?
          headers
          http-method
          input-stream
          is-authenticated?
          is-local?
          is-secure-connection?
          keep-alive?
          local-end-point
          protocol-version
          query-string
          raw-url
          remote-end-point
          request-trace-identifier
          url
          url-referrer
          user-agent
          user-host-address
          user-host-name
          user-languages)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.HttpListenerRequest a))
  (define (http-listener-request? a)
    (clr-is System.Net.HttpListenerRequest a))
  (define-method-port
    end-get-client-certificate
    System.Net.HttpListenerRequest
    EndGetClientCertificate
    (System.Security.Cryptography.X509Certificates.X509Certificate2
      System.IAsyncResult))
  (define-method-port
    get-client-certificate
    System.Net.HttpListenerRequest
    GetClientCertificate
    (System.Security.Cryptography.X509Certificates.X509Certificate2))
  (define-method-port
    begin-get-client-certificate
    System.Net.HttpListenerRequest
    BeginGetClientCertificate
    (System.IAsyncResult System.AsyncCallback System.Object))
  (define-field-port
    accept-types
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    AcceptTypes
    System.String[])
  (define-field-port
    client-certificate-error
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    ClientCertificateError
    System.Int32)
  (define-field-port
    content-encoding
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    ContentEncoding
    System.Text.Encoding)
  (define-field-port
    content-length64
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    ContentLength64
    System.Int64)
  (define-field-port
    content-type
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    ContentType
    System.String)
  (define-field-port
    cookies
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    Cookies
    System.Net.CookieCollection)
  (define-field-port
    has-entity-body?
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    HasEntityBody
    System.Boolean)
  (define-field-port
    headers
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    Headers
    System.Collections.Specialized.NameValueCollection)
  (define-field-port
    http-method
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    HttpMethod
    System.String)
  (define-field-port
    input-stream
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    InputStream
    System.IO.Stream)
  (define-field-port
    is-authenticated?
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    IsAuthenticated
    System.Boolean)
  (define-field-port
    is-local?
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    IsLocal
    System.Boolean)
  (define-field-port
    is-secure-connection?
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    IsSecureConnection
    System.Boolean)
  (define-field-port
    keep-alive?
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    KeepAlive
    System.Boolean)
  (define-field-port
    local-end-point
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    LocalEndPoint
    System.Net.IPEndPoint)
  (define-field-port
    protocol-version
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    ProtocolVersion
    System.Version)
  (define-field-port
    query-string
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    QueryString
    System.Collections.Specialized.NameValueCollection)
  (define-field-port
    raw-url
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    RawUrl
    System.String)
  (define-field-port
    remote-end-point
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    RemoteEndPoint
    System.Net.IPEndPoint)
  (define-field-port
    request-trace-identifier
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    RequestTraceIdentifier
    System.Guid)
  (define-field-port
    url
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    Url
    System.Uri)
  (define-field-port
    url-referrer
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    UrlReferrer
    System.Uri)
  (define-field-port
    user-agent
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    UserAgent
    System.String)
  (define-field-port
    user-host-address
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    UserHostAddress
    System.String)
  (define-field-port
    user-host-name
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    UserHostName
    System.String)
  (define-field-port
    user-languages
    #f
    #f
    (property:)
    System.Net.HttpListenerRequest
    UserLanguages
    System.String[]))

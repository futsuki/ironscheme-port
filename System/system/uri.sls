(library (system uri)
  (export new
          is?
          uri?
          get-hash-code
          try-create?
          get-components
          get-left-part
          unescape-data-string
          escape-data-string
          make-relative
          to-string
          from-hex
          is-well-formed-uri-string?
          hex-unescape
          escape-uri-string
          check-host-name
          is-base-of?
          is-hex-encoding?
          check-scheme-name?
          hex-escape
          compare
          is-well-formed-original-string?
          equals?
          make-relative-uri
          is-hex-digit?
          scheme-delimiter
          uri-scheme-file
          uri-scheme-ftp
          uri-scheme-gopher
          uri-scheme-http
          uri-scheme-https
          uri-scheme-mailto
          uri-scheme-news
          uri-scheme-nntp
          uri-scheme-net-pipe
          uri-scheme-net-tcp
          absolute-path
          absolute-uri
          authority
          fragment
          host
          host-name-type
          is-default-port?
          is-file?
          is-loopback?
          is-unc?
          local-path
          path-and-query
          port
          query
          scheme
          segments
          user-escaped?
          user-info
          dns-safe-host
          is-absolute-uri?
          original-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new System.Uri a ...)))))
  (define (is? a) (clr-is System.Uri a))
  (define (uri? a) (clr-is System.Uri a))
  (define-method-port
    get-hash-code
    System.Uri
    GetHashCode
    (System.Int32))
  (define-method-port
    try-create?
    System.Uri
    TryCreate
    (static: System.Boolean System.Uri System.Uri System.Uri&)
    (static: System.Boolean System.Uri System.String System.Uri&)
    (static: System.Boolean System.String System.UriKind System.Uri&))
  (define-method-port
    get-components
    System.Uri
    GetComponents
    (System.String System.UriComponents System.UriFormat))
  (define-method-port
    get-left-part
    System.Uri
    GetLeftPart
    (System.String System.UriPartial))
  (define-method-port
    unescape-data-string
    System.Uri
    UnescapeDataString
    (static: System.String System.String))
  (define-method-port
    escape-data-string
    System.Uri
    EscapeDataString
    (static: System.String System.String))
  (define-method-port
    make-relative
    System.Uri
    MakeRelative
    (System.String System.Uri))
  (define-method-port to-string System.Uri ToString (System.String))
  (define-method-port
    from-hex
    System.Uri
    FromHex
    (static: System.Int32 System.Char))
  (define-method-port
    is-well-formed-uri-string?
    System.Uri
    IsWellFormedUriString
    (static: System.Boolean System.String System.UriKind))
  (define-method-port
    hex-unescape
    System.Uri
    HexUnescape
    (static: System.Char System.String System.Int32&))
  (define-method-port
    escape-uri-string
    System.Uri
    EscapeUriString
    (static: System.String System.String))
  (define-method-port
    check-host-name
    System.Uri
    CheckHostName
    (static: System.UriHostNameType System.String))
  (define-method-port
    is-base-of?
    System.Uri
    IsBaseOf
    (System.Boolean System.Uri))
  (define-method-port
    is-hex-encoding?
    System.Uri
    IsHexEncoding
    (static: System.Boolean System.String System.Int32))
  (define-method-port
    check-scheme-name?
    System.Uri
    CheckSchemeName
    (static: System.Boolean System.String))
  (define-method-port
    hex-escape
    System.Uri
    HexEscape
    (static: System.String System.Char))
  (define-method-port
    compare
    System.Uri
    Compare
    (static:
      System.Int32
      System.Uri
      System.Uri
      System.UriComponents
      System.UriFormat
      System.StringComparison))
  (define-method-port
    is-well-formed-original-string?
    System.Uri
    IsWellFormedOriginalString
    (System.Boolean))
  (define-method-port
    equals?
    System.Uri
    Equals
    (System.Boolean System.Object))
  (define-method-port
    make-relative-uri
    System.Uri
    MakeRelativeUri
    (System.Uri System.Uri))
  (define-method-port
    is-hex-digit?
    System.Uri
    IsHexDigit
    (static: System.Boolean System.Char))
  (define-field-port
    scheme-delimiter
    #f
    #f
    (static:)
    System.Uri
    SchemeDelimiter
    System.String)
  (define-field-port
    uri-scheme-file
    #f
    #f
    (static:)
    System.Uri
    UriSchemeFile
    System.String)
  (define-field-port
    uri-scheme-ftp
    #f
    #f
    (static:)
    System.Uri
    UriSchemeFtp
    System.String)
  (define-field-port
    uri-scheme-gopher
    #f
    #f
    (static:)
    System.Uri
    UriSchemeGopher
    System.String)
  (define-field-port
    uri-scheme-http
    #f
    #f
    (static:)
    System.Uri
    UriSchemeHttp
    System.String)
  (define-field-port
    uri-scheme-https
    #f
    #f
    (static:)
    System.Uri
    UriSchemeHttps
    System.String)
  (define-field-port
    uri-scheme-mailto
    #f
    #f
    (static:)
    System.Uri
    UriSchemeMailto
    System.String)
  (define-field-port
    uri-scheme-news
    #f
    #f
    (static:)
    System.Uri
    UriSchemeNews
    System.String)
  (define-field-port
    uri-scheme-nntp
    #f
    #f
    (static:)
    System.Uri
    UriSchemeNntp
    System.String)
  (define-field-port
    uri-scheme-net-pipe
    #f
    #f
    (static:)
    System.Uri
    UriSchemeNetPipe
    System.String)
  (define-field-port
    uri-scheme-net-tcp
    #f
    #f
    (static:)
    System.Uri
    UriSchemeNetTcp
    System.String)
  (define-field-port
    absolute-path
    #f
    #f
    (property:)
    System.Uri
    AbsolutePath
    System.String)
  (define-field-port
    absolute-uri
    #f
    #f
    (property:)
    System.Uri
    AbsoluteUri
    System.String)
  (define-field-port
    authority
    #f
    #f
    (property:)
    System.Uri
    Authority
    System.String)
  (define-field-port
    fragment
    #f
    #f
    (property:)
    System.Uri
    Fragment
    System.String)
  (define-field-port
    host
    #f
    #f
    (property:)
    System.Uri
    Host
    System.String)
  (define-field-port
    host-name-type
    #f
    #f
    (property:)
    System.Uri
    HostNameType
    System.UriHostNameType)
  (define-field-port
    is-default-port?
    #f
    #f
    (property:)
    System.Uri
    IsDefaultPort
    System.Boolean)
  (define-field-port
    is-file?
    #f
    #f
    (property:)
    System.Uri
    IsFile
    System.Boolean)
  (define-field-port
    is-loopback?
    #f
    #f
    (property:)
    System.Uri
    IsLoopback
    System.Boolean)
  (define-field-port
    is-unc?
    #f
    #f
    (property:)
    System.Uri
    IsUnc
    System.Boolean)
  (define-field-port
    local-path
    #f
    #f
    (property:)
    System.Uri
    LocalPath
    System.String)
  (define-field-port
    path-and-query
    #f
    #f
    (property:)
    System.Uri
    PathAndQuery
    System.String)
  (define-field-port
    port
    #f
    #f
    (property:)
    System.Uri
    Port
    System.Int32)
  (define-field-port
    query
    #f
    #f
    (property:)
    System.Uri
    Query
    System.String)
  (define-field-port
    scheme
    #f
    #f
    (property:)
    System.Uri
    Scheme
    System.String)
  (define-field-port
    segments
    #f
    #f
    (property:)
    System.Uri
    Segments
    System.String[])
  (define-field-port
    user-escaped?
    #f
    #f
    (property:)
    System.Uri
    UserEscaped
    System.Boolean)
  (define-field-port
    user-info
    #f
    #f
    (property:)
    System.Uri
    UserInfo
    System.String)
  (define-field-port
    dns-safe-host
    #f
    #f
    (property:)
    System.Uri
    DnsSafeHost
    System.String)
  (define-field-port
    is-absolute-uri?
    #f
    #f
    (property:)
    System.Uri
    IsAbsoluteUri
    System.Boolean)
  (define-field-port
    original-string
    #f
    #f
    (property:)
    System.Uri
    OriginalString
    System.String))

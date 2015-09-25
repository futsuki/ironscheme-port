(library (system net security authenticated-stream)
  (export is?
          authenticated-stream?
          is-authenticated?
          is-encrypted?
          is-mutually-authenticated?
          is-server?
          is-signed?
          leave-inner-stream-open?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.Security.AuthenticatedStream a))
  (define (authenticated-stream? a)
    (clr-is System.Net.Security.AuthenticatedStream a))
  (define-field-port
    is-authenticated?
    #f
    #f
    (property:)
    System.Net.Security.AuthenticatedStream
    IsAuthenticated
    System.Boolean)
  (define-field-port
    is-encrypted?
    #f
    #f
    (property:)
    System.Net.Security.AuthenticatedStream
    IsEncrypted
    System.Boolean)
  (define-field-port
    is-mutually-authenticated?
    #f
    #f
    (property:)
    System.Net.Security.AuthenticatedStream
    IsMutuallyAuthenticated
    System.Boolean)
  (define-field-port
    is-server?
    #f
    #f
    (property:)
    System.Net.Security.AuthenticatedStream
    IsServer
    System.Boolean)
  (define-field-port
    is-signed?
    #f
    #f
    (property:)
    System.Net.Security.AuthenticatedStream
    IsSigned
    System.Boolean)
  (define-field-port
    leave-inner-stream-open?
    #f
    #f
    (property:)
    System.Net.Security.AuthenticatedStream
    LeaveInnerStreamOpen
    System.Boolean))

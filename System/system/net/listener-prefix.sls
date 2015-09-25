(library (system net listener-prefix)
  (export new
          is?
          listener-prefix?
          get-hash-code
          equals?
          check-uri
          to-string
          listener-get
          listener-set!
          listener-update!
          addresses-get
          addresses-set!
          addresses-update!
          secure?
          host
          port
          path)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.ListenerPrefix a ...)))))
  (define (is? a) (clr-is System.Net.ListenerPrefix a))
  (define (listener-prefix? a) (clr-is System.Net.ListenerPrefix a))
  (define-method-port
    get-hash-code
    System.Net.ListenerPrefix
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Net.ListenerPrefix
    Equals
    (System.Boolean System.Object))
  (define-method-port
    check-uri
    System.Net.ListenerPrefix
    CheckUri
    (static: System.Void System.String))
  (define-method-port
    to-string
    System.Net.ListenerPrefix
    ToString
    (System.String))
  (define-field-port
    listener-get
    listener-set!
    listener-update!
    ()
    System.Net.ListenerPrefix
    Listener
    System.Net.HttpListener)
  (define-field-port
    addresses-get
    addresses-set!
    addresses-update!
    (property:)
    System.Net.ListenerPrefix
    Addresses
    System.Net.IPAddress[])
  (define-field-port
    secure?
    #f
    #f
    (property:)
    System.Net.ListenerPrefix
    Secure
    System.Boolean)
  (define-field-port
    host
    #f
    #f
    (property:)
    System.Net.ListenerPrefix
    Host
    System.String)
  (define-field-port
    port
    #f
    #f
    (property:)
    System.Net.ListenerPrefix
    Port
    System.Int32)
  (define-field-port
    path
    #f
    #f
    (property:)
    System.Net.ListenerPrefix
    Path
    System.String))

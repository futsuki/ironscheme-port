(library (system runtime remoting well-known-client-type-entry)
  (export new
          is?
          well-known-client-type-entry?
          to-string
          application-url-get
          application-url-set!
          application-url-update!
          object-type
          object-url)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.WellKnownClientTypeEntry
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.WellKnownClientTypeEntry a))
  (define (well-known-client-type-entry? a)
    (clr-is System.Runtime.Remoting.WellKnownClientTypeEntry a))
  (define-method-port
    to-string
    System.Runtime.Remoting.WellKnownClientTypeEntry
    ToString
    (System.String))
  (define-field-port
    application-url-get
    application-url-set!
    application-url-update!
    (property:)
    System.Runtime.Remoting.WellKnownClientTypeEntry
    ApplicationUrl
    System.String)
  (define-field-port
    object-type
    #f
    #f
    (property:)
    System.Runtime.Remoting.WellKnownClientTypeEntry
    ObjectType
    System.Type)
  (define-field-port
    object-url
    #f
    #f
    (property:)
    System.Runtime.Remoting.WellKnownClientTypeEntry
    ObjectUrl
    System.String))

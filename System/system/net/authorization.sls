(library (system net authorization)
  (export new
          is?
          authorization?
          message
          complete?
          connection-group-id
          protection-realm-get
          protection-realm-set!
          protection-realm-update!
          mutually-authenticated?-get
          mutually-authenticated?-set!
          mutually-authenticated?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Authorization a ...)))))
  (define (is? a) (clr-is System.Net.Authorization a))
  (define (authorization? a) (clr-is System.Net.Authorization a))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Net.Authorization
    Message
    System.String)
  (define-field-port
    complete?
    #f
    #f
    (property:)
    System.Net.Authorization
    Complete
    System.Boolean)
  (define-field-port
    connection-group-id
    #f
    #f
    (property:)
    System.Net.Authorization
    ConnectionGroupId
    System.String)
  (define-field-port
    protection-realm-get
    protection-realm-set!
    protection-realm-update!
    (property:)
    System.Net.Authorization
    ProtectionRealm
    System.String[])
  (define-field-port
    mutually-authenticated?-get
    mutually-authenticated?-set!
    mutually-authenticated?-update!
    (property:)
    System.Net.Authorization
    MutuallyAuthenticated
    System.Boolean))

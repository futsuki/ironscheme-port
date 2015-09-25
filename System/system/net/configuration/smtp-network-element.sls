(library (system net configuration smtp-network-element)
  (export new
          is?
          smtp-network-element?
          default-credentials?-get
          default-credentials?-set!
          default-credentials?-update!
          host-get
          host-set!
          host-update!
          password-get
          password-set!
          password-update!
          port-get
          port-set!
          port-update!
          user-name-get
          user-name-set!
          user-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.SmtpNetworkElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.SmtpNetworkElement a))
  (define (smtp-network-element? a)
    (clr-is System.Net.Configuration.SmtpNetworkElement a))
  (define-field-port
    default-credentials?-get
    default-credentials?-set!
    default-credentials?-update!
    (property:)
    System.Net.Configuration.SmtpNetworkElement
    DefaultCredentials
    System.Boolean)
  (define-field-port
    host-get
    host-set!
    host-update!
    (property:)
    System.Net.Configuration.SmtpNetworkElement
    Host
    System.String)
  (define-field-port
    password-get
    password-set!
    password-update!
    (property:)
    System.Net.Configuration.SmtpNetworkElement
    Password
    System.String)
  (define-field-port
    port-get
    port-set!
    port-update!
    (property:)
    System.Net.Configuration.SmtpNetworkElement
    Port
    System.Int32)
  (define-field-port
    user-name-get
    user-name-set!
    user-name-update!
    (property:)
    System.Net.Configuration.SmtpNetworkElement
    UserName
    System.String))

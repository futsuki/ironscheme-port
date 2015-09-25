(library (system configuration connection-string-settings)
  (export new
          is?
          connection-string-settings?
          to-string
          name-get
          name-set!
          name-update!
          provider-name-get
          provider-name-set!
          provider-name-update!
          connection-string-get
          connection-string-set!
          connection-string-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConnectionStringSettings
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConnectionStringSettings a))
  (define (connection-string-settings? a)
    (clr-is System.Configuration.ConnectionStringSettings a))
  (define-method-port
    to-string
    System.Configuration.ConnectionStringSettings
    ToString
    (System.String))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Configuration.ConnectionStringSettings
    Name
    System.String)
  (define-field-port
    provider-name-get
    provider-name-set!
    provider-name-update!
    (property:)
    System.Configuration.ConnectionStringSettings
    ProviderName
    System.String)
  (define-field-port
    connection-string-get
    connection-string-set!
    connection-string-update!
    (property:)
    System.Configuration.ConnectionStringSettings
    ConnectionString
    System.String))

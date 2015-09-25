(library (system net web-permission-attribute)
  (export new
          is?
          web-permission-attribute?
          create-permission
          accept-get
          accept-set!
          accept-update!
          accept-pattern-get
          accept-pattern-set!
          accept-pattern-update!
          connect-get
          connect-set!
          connect-update!
          connect-pattern-get
          connect-pattern-set!
          connect-pattern-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.WebPermissionAttribute a ...)))))
  (define (is? a) (clr-is System.Net.WebPermissionAttribute a))
  (define (web-permission-attribute? a)
    (clr-is System.Net.WebPermissionAttribute a))
  (define-method-port
    create-permission
    System.Net.WebPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    accept-get
    accept-set!
    accept-update!
    (property:)
    System.Net.WebPermissionAttribute
    Accept
    System.String)
  (define-field-port
    accept-pattern-get
    accept-pattern-set!
    accept-pattern-update!
    (property:)
    System.Net.WebPermissionAttribute
    AcceptPattern
    System.String)
  (define-field-port
    connect-get
    connect-set!
    connect-update!
    (property:)
    System.Net.WebPermissionAttribute
    Connect
    System.String)
  (define-field-port
    connect-pattern-get
    connect-pattern-set!
    connect-pattern-update!
    (property:)
    System.Net.WebPermissionAttribute
    ConnectPattern
    System.String))

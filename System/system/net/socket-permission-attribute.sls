(library (system net socket-permission-attribute)
  (export new
          is?
          socket-permission-attribute?
          create-permission
          access-get
          access-set!
          access-update!
          host-get
          host-set!
          host-update!
          port-get
          port-set!
          port-update!
          transport-get
          transport-set!
          transport-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.SocketPermissionAttribute a ...)))))
  (define (is? a) (clr-is System.Net.SocketPermissionAttribute a))
  (define (socket-permission-attribute? a)
    (clr-is System.Net.SocketPermissionAttribute a))
  (define-method-port
    create-permission
    System.Net.SocketPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    access-get
    access-set!
    access-update!
    (property:)
    System.Net.SocketPermissionAttribute
    Access
    System.String)
  (define-field-port
    host-get
    host-set!
    host-update!
    (property:)
    System.Net.SocketPermissionAttribute
    Host
    System.String)
  (define-field-port
    port-get
    port-set!
    port-update!
    (property:)
    System.Net.SocketPermissionAttribute
    Port
    System.String)
  (define-field-port
    transport-get
    transport-set!
    transport-update!
    (property:)
    System.Net.SocketPermissionAttribute
    Transport
    System.String))

(library (system security permissions permission-set-attribute)
  (export new
          is?
          permission-set-attribute?
          create-permission
          create-permission-set
          file-get
          file-set!
          file-update!
          hex-get
          hex-set!
          hex-update!
          name-get
          name-set!
          name-update!
          unicode-encoded?-get
          unicode-encoded?-set!
          unicode-encoded?-update!
          xml-get
          xml-set!
          xml-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.PermissionSetAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.PermissionSetAttribute a))
  (define (permission-set-attribute? a)
    (clr-is System.Security.Permissions.PermissionSetAttribute a))
  (define-method-port
    create-permission
    System.Security.Permissions.PermissionSetAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-method-port
    create-permission-set
    System.Security.Permissions.PermissionSetAttribute
    CreatePermissionSet
    (System.Security.PermissionSet))
  (define-field-port
    file-get
    file-set!
    file-update!
    (property:)
    System.Security.Permissions.PermissionSetAttribute
    File
    System.String)
  (define-field-port
    hex-get
    hex-set!
    hex-update!
    (property:)
    System.Security.Permissions.PermissionSetAttribute
    Hex
    System.String)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Security.Permissions.PermissionSetAttribute
    Name
    System.String)
  (define-field-port
    unicode-encoded?-get
    unicode-encoded?-set!
    unicode-encoded?-update!
    (property:)
    System.Security.Permissions.PermissionSetAttribute
    UnicodeEncoded
    System.Boolean)
  (define-field-port
    xml-get
    xml-set!
    xml-update!
    (property:)
    System.Security.Permissions.PermissionSetAttribute
    XML
    System.String))

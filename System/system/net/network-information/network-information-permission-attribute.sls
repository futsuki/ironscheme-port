(library (system
          net
          network-information
          network-information-permission-attribute)
  (export new
          is?
          network-information-permission-attribute?
          create-permission
          access-get
          access-set!
          access-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.NetworkInformationPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.NetworkInformationPermissionAttribute
      a))
  (define (network-information-permission-attribute? a)
    (clr-is
      System.Net.NetworkInformation.NetworkInformationPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Net.NetworkInformation.NetworkInformationPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    access-get
    access-set!
    access-update!
    (property:)
    System.Net.NetworkInformation.NetworkInformationPermissionAttribute
    Access
    System.String))

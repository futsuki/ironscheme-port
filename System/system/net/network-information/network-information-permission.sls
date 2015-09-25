(library (system net network-information network-information-permission)
  (export new
          is?
          network-information-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          add-permission
          is-unrestricted?
          copy
          intersect
          access)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.NetworkInformationPermission
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.NetworkInformationPermission
      a))
  (define (network-information-permission? a)
    (clr-is
      System.Net.NetworkInformation.NetworkInformationPermission
      a))
  (define-method-port
    union
    System.Net.NetworkInformation.NetworkInformationPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Net.NetworkInformation.NetworkInformationPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Net.NetworkInformation.NetworkInformationPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Net.NetworkInformation.NetworkInformationPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    add-permission
    System.Net.NetworkInformation.NetworkInformationPermission
    AddPermission
    (System.Void
      System.Net.NetworkInformation.NetworkInformationAccess))
  (define-method-port
    is-unrestricted?
    System.Net.NetworkInformation.NetworkInformationPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Net.NetworkInformation.NetworkInformationPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Net.NetworkInformation.NetworkInformationPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    access
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkInformationPermission
    Access
    System.Net.NetworkInformation.NetworkInformationAccess))

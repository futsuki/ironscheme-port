(library (system net socket-permission)
  (export new
          is?
          socket-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          add-permission
          is-unrestricted?
          copy
          intersect
          all-ports
          accept-list
          connect-list)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.SocketPermission a ...)))))
  (define (is? a) (clr-is System.Net.SocketPermission a))
  (define (socket-permission? a) (clr-is System.Net.SocketPermission a))
  (define-method-port
    union
    System.Net.SocketPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Net.SocketPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Net.SocketPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Net.SocketPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    add-permission
    System.Net.SocketPermission
    AddPermission
    (System.Void
      System.Net.NetworkAccess
      System.Net.TransportType
      System.String
      System.Int32))
  (define-method-port
    is-unrestricted?
    System.Net.SocketPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Net.SocketPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Net.SocketPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    all-ports
    #f
    #f
    (static:)
    System.Net.SocketPermission
    AllPorts
    System.Int32)
  (define-field-port
    accept-list
    #f
    #f
    (property:)
    System.Net.SocketPermission
    AcceptList
    System.Collections.IEnumerator)
  (define-field-port
    connect-list
    #f
    #f
    (property:)
    System.Net.SocketPermission
    ConnectList
    System.Collections.IEnumerator))

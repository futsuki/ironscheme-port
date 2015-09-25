(library (unity-engine master-server)
  (export new
          is?
          master-server?
          register-host
          poll-host-list
          unregister-host
          clear-host-list
          request-host-list
          ip-address-get
          ip-address-set!
          ip-address-update!
          port-get
          port-set!
          port-update!
          update-rate-get
          update-rate-set!
          update-rate-update!
          dedicated-server?-get
          dedicated-server?-set!
          dedicated-server?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.MasterServer a ...)))))
  (define (is? a) (clr-is UnityEngine.MasterServer a))
  (define (master-server? a) (clr-is UnityEngine.MasterServer a))
  (define-method-port
    register-host
    UnityEngine.MasterServer
    RegisterHost
    (static: System.Void System.String System.String)
    (static: System.Void System.String System.String System.String))
  (define-method-port
    poll-host-list
    UnityEngine.MasterServer
    PollHostList
    (static: UnityEngine.HostData[]))
  (define-method-port
    unregister-host
    UnityEngine.MasterServer
    UnregisterHost
    (static: System.Void))
  (define-method-port
    clear-host-list
    UnityEngine.MasterServer
    ClearHostList
    (static: System.Void))
  (define-method-port
    request-host-list
    UnityEngine.MasterServer
    RequestHostList
    (static: System.Void System.String))
  (define-field-port
    ip-address-get
    ip-address-set!
    ip-address-update!
    (static: property:)
    UnityEngine.MasterServer
    ipAddress
    System.String)
  (define-field-port
    port-get
    port-set!
    port-update!
    (static: property:)
    UnityEngine.MasterServer
    port
    System.Int32)
  (define-field-port
    update-rate-get
    update-rate-set!
    update-rate-update!
    (static: property:)
    UnityEngine.MasterServer
    updateRate
    System.Int32)
  (define-field-port
    dedicated-server?-get
    dedicated-server?-set!
    dedicated-server?-update!
    (static: property:)
    UnityEngine.MasterServer
    dedicatedServer
    System.Boolean))

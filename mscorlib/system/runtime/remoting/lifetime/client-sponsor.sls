(library (system runtime remoting lifetime client-sponsor)
  (export new
          is?
          client-sponsor?
          unregister
          initialize-lifetime-service
          renewal
          register?
          close
          renewal-time-get
          renewal-time-set!
          renewal-time-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Lifetime.ClientSponsor
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Lifetime.ClientSponsor a))
  (define (client-sponsor? a)
    (clr-is System.Runtime.Remoting.Lifetime.ClientSponsor a))
  (define-method-port
    unregister
    System.Runtime.Remoting.Lifetime.ClientSponsor
    Unregister
    (System.Void System.MarshalByRefObject))
  (define-method-port
    initialize-lifetime-service
    System.Runtime.Remoting.Lifetime.ClientSponsor
    InitializeLifetimeService
    (System.Object))
  (define-method-port
    renewal
    System.Runtime.Remoting.Lifetime.ClientSponsor
    Renewal
    (System.TimeSpan System.Runtime.Remoting.Lifetime.ILease))
  (define-method-port
    register?
    System.Runtime.Remoting.Lifetime.ClientSponsor
    Register
    (System.Boolean System.MarshalByRefObject))
  (define-method-port
    close
    System.Runtime.Remoting.Lifetime.ClientSponsor
    Close
    (System.Void))
  (define-field-port
    renewal-time-get
    renewal-time-set!
    renewal-time-update!
    (property:)
    System.Runtime.Remoting.Lifetime.ClientSponsor
    RenewalTime
    System.TimeSpan))

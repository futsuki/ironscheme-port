(library (system runtime remoting lifetime lease)
  (export new
          is?
          lease?
          renew
          unregister
          register
          activate
          current-lease-time
          current-state
          initial-lease-time-get
          initial-lease-time-set!
          initial-lease-time-update!
          renew-on-call-time-get
          renew-on-call-time-set!
          renew-on-call-time-update!
          sponsorship-timeout-get
          sponsorship-timeout-set!
          sponsorship-timeout-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.Lifetime.Lease a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.Lifetime.Lease a))
  (define (lease? a) (clr-is System.Runtime.Remoting.Lifetime.Lease a))
  (define-method-port
    renew
    System.Runtime.Remoting.Lifetime.Lease
    Renew
    (System.TimeSpan System.TimeSpan))
  (define-method-port
    unregister
    System.Runtime.Remoting.Lifetime.Lease
    Unregister
    (System.Void System.Runtime.Remoting.Lifetime.ISponsor))
  (define-method-port
    register
    System.Runtime.Remoting.Lifetime.Lease
    Register
    (System.Void
      System.Runtime.Remoting.Lifetime.ISponsor
      System.TimeSpan)
    (System.Void System.Runtime.Remoting.Lifetime.ISponsor))
  (define-method-port
    activate
    System.Runtime.Remoting.Lifetime.Lease
    Activate
    (System.Void))
  (define-field-port
    current-lease-time
    #f
    #f
    (property:)
    System.Runtime.Remoting.Lifetime.Lease
    CurrentLeaseTime
    System.TimeSpan)
  (define-field-port
    current-state
    #f
    #f
    (property:)
    System.Runtime.Remoting.Lifetime.Lease
    CurrentState
    System.Runtime.Remoting.Lifetime.LeaseState)
  (define-field-port
    initial-lease-time-get
    initial-lease-time-set!
    initial-lease-time-update!
    (property:)
    System.Runtime.Remoting.Lifetime.Lease
    InitialLeaseTime
    System.TimeSpan)
  (define-field-port
    renew-on-call-time-get
    renew-on-call-time-set!
    renew-on-call-time-update!
    (property:)
    System.Runtime.Remoting.Lifetime.Lease
    RenewOnCallTime
    System.TimeSpan)
  (define-field-port
    sponsorship-timeout-get
    sponsorship-timeout-set!
    sponsorship-timeout-update!
    (property:)
    System.Runtime.Remoting.Lifetime.Lease
    SponsorshipTimeout
    System.TimeSpan))

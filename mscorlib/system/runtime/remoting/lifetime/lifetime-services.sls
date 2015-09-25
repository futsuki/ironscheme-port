(library (system runtime remoting lifetime lifetime-services)
  (export new
          is?
          lifetime-services?
          lease-manager-poll-time-get
          lease-manager-poll-time-set!
          lease-manager-poll-time-update!
          lease-time-get
          lease-time-set!
          lease-time-update!
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
         #'(clr-new
             System.Runtime.Remoting.Lifetime.LifetimeServices
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Lifetime.LifetimeServices a))
  (define (lifetime-services? a)
    (clr-is System.Runtime.Remoting.Lifetime.LifetimeServices a))
  (define-field-port
    lease-manager-poll-time-get
    lease-manager-poll-time-set!
    lease-manager-poll-time-update!
    (static: property:)
    System.Runtime.Remoting.Lifetime.LifetimeServices
    LeaseManagerPollTime
    System.TimeSpan)
  (define-field-port
    lease-time-get
    lease-time-set!
    lease-time-update!
    (static: property:)
    System.Runtime.Remoting.Lifetime.LifetimeServices
    LeaseTime
    System.TimeSpan)
  (define-field-port
    renew-on-call-time-get
    renew-on-call-time-set!
    renew-on-call-time-update!
    (static: property:)
    System.Runtime.Remoting.Lifetime.LifetimeServices
    RenewOnCallTime
    System.TimeSpan)
  (define-field-port
    sponsorship-timeout-get
    sponsorship-timeout-set!
    sponsorship-timeout-update!
    (static: property:)
    System.Runtime.Remoting.Lifetime.LifetimeServices
    SponsorshipTimeout
    System.TimeSpan))

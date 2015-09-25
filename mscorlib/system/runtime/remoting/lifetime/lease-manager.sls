(library (system runtime remoting lifetime lease-manager)
  (export new
          is?
          lease-manager?
          set-poll-time
          stop-manager
          start-manager
          stop-tracking-lifetime
          manage-leases
          track-lifetime)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Lifetime.LeaseManager
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Lifetime.LeaseManager a))
  (define (lease-manager? a)
    (clr-is System.Runtime.Remoting.Lifetime.LeaseManager a))
  (define-method-port
    set-poll-time
    System.Runtime.Remoting.Lifetime.LeaseManager
    SetPollTime
    (System.Void System.TimeSpan))
  (define-method-port
    stop-manager
    System.Runtime.Remoting.Lifetime.LeaseManager
    StopManager
    (System.Void))
  (define-method-port
    start-manager
    System.Runtime.Remoting.Lifetime.LeaseManager
    StartManager
    (System.Void))
  (define-method-port
    stop-tracking-lifetime
    System.Runtime.Remoting.Lifetime.LeaseManager
    StopTrackingLifetime
    (System.Void System.Runtime.Remoting.ServerIdentity))
  (define-method-port
    manage-leases
    System.Runtime.Remoting.Lifetime.LeaseManager
    ManageLeases
    (System.Void System.Object))
  (define-method-port
    track-lifetime
    System.Runtime.Remoting.Lifetime.LeaseManager
    TrackLifetime
    (System.Void System.Runtime.Remoting.ServerIdentity)))

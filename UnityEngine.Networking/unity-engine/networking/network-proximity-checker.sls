(library (unity-engine networking network-proximity-checker)
  (export new
          is?
          network-proximity-checker?
          on-rebuild-observers?
          on-set-local-visibility
          on-check-observer?
          vis-range-get
          vis-range-set!
          vis-range-update!
          vis-update-interval-get
          vis-update-interval-set!
          vis-update-interval-update!
          check-method-get
          check-method-set!
          check-method-update!
          force-hidden?-get
          force-hidden?-set!
          force-hidden?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkProximityChecker
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkProximityChecker a))
  (define (network-proximity-checker? a)
    (clr-is UnityEngine.Networking.NetworkProximityChecker a))
  (define-method-port
    on-rebuild-observers?
    UnityEngine.Networking.NetworkProximityChecker
    OnRebuildObservers)
  (define-method-port
    on-set-local-visibility
    UnityEngine.Networking.NetworkProximityChecker
    OnSetLocalVisibility
    (System.Void System.Boolean))
  (define-method-port
    on-check-observer?
    UnityEngine.Networking.NetworkProximityChecker
    OnCheckObserver
    (System.Boolean UnityEngine.Networking.NetworkConnection))
  (define-field-port
    vis-range-get
    vis-range-set!
    vis-range-update!
    ()
    UnityEngine.Networking.NetworkProximityChecker
    visRange
    System.Int32)
  (define-field-port
    vis-update-interval-get
    vis-update-interval-set!
    vis-update-interval-update!
    ()
    UnityEngine.Networking.NetworkProximityChecker
    visUpdateInterval
    System.Single)
  (define-field-port
    check-method-get
    check-method-set!
    check-method-update!
    ()
    UnityEngine.Networking.NetworkProximityChecker
    checkMethod
    UnityEngine.Networking.NetworkProximityChecker+CheckMethod)
  (define-field-port
    force-hidden?-get
    force-hidden?-set!
    force-hidden?-update!
    ()
    UnityEngine.Networking.NetworkProximityChecker
    forceHidden
    System.Boolean))

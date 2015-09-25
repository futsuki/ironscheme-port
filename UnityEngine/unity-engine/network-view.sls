(library (unity-engine network-view)
  (export new
          is?
          network-view?
          find
          set-scope?
          rpc
          observed-get
          observed-set!
          observed-update!
          state-synchronization-get
          state-synchronization-set!
          state-synchronization-update!
          view-id-get
          view-id-set!
          view-id-update!
          group-get
          group-set!
          group-update!
          is-mine?
          owner)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.NetworkView a ...)))))
  (define (is? a) (clr-is UnityEngine.NetworkView a))
  (define (network-view? a) (clr-is UnityEngine.NetworkView a))
  (define-method-port
    find
    UnityEngine.NetworkView
    Find
    (static: UnityEngine.NetworkView UnityEngine.NetworkViewID))
  (define-method-port
    set-scope?
    UnityEngine.NetworkView
    SetScope
    (System.Boolean UnityEngine.NetworkPlayer System.Boolean))
  (define-method-port
    rpc
    UnityEngine.NetworkView
    RPC
    (System.Void
      System.String
      UnityEngine.NetworkPlayer
      System.Object[])
    (System.Void System.String UnityEngine.RPCMode System.Object[]))
  (define-field-port
    observed-get
    observed-set!
    observed-update!
    (property:)
    UnityEngine.NetworkView
    observed
    UnityEngine.Component)
  (define-field-port
    state-synchronization-get
    state-synchronization-set!
    state-synchronization-update!
    (property:)
    UnityEngine.NetworkView
    stateSynchronization
    UnityEngine.NetworkStateSynchronization)
  (define-field-port
    view-id-get
    view-id-set!
    view-id-update!
    (property:)
    UnityEngine.NetworkView
    viewID
    UnityEngine.NetworkViewID)
  (define-field-port
    group-get
    group-set!
    group-update!
    (property:)
    UnityEngine.NetworkView
    group
    System.Int32)
  (define-field-port
    is-mine?
    #f
    #f
    (property:)
    UnityEngine.NetworkView
    isMine
    System.Boolean)
  (define-field-port
    owner
    #f
    #f
    (property:)
    UnityEngine.NetworkView
    owner
    UnityEngine.NetworkPlayer))

(library (unity-engine networking player-controller)
  (export new
          is?
          player-controller?
          to-string
          max-players-per-client
          player-controller-id-get
          player-controller-id-set!
          player-controller-id-update!
          unet-view-get
          unet-view-set!
          unet-view-update!
          game-object-get
          game-object-set!
          game-object-update!
          is-valid?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.PlayerController a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.PlayerController a))
  (define (player-controller? a)
    (clr-is UnityEngine.Networking.PlayerController a))
  (define-method-port
    to-string
    UnityEngine.Networking.PlayerController
    ToString
    (System.String))
  (define-field-port
    max-players-per-client
    #f
    #f
    (static:)
    UnityEngine.Networking.PlayerController
    MaxPlayersPerClient
    System.Int32)
  (define-field-port
    player-controller-id-get
    player-controller-id-set!
    player-controller-id-update!
    ()
    UnityEngine.Networking.PlayerController
    playerControllerId
    System.Int16)
  (define-field-port
    unet-view-get
    unet-view-set!
    unet-view-update!
    ()
    UnityEngine.Networking.PlayerController
    unetView
    UnityEngine.Networking.NetworkIdentity)
  (define-field-port
    game-object-get
    game-object-set!
    game-object-update!
    ()
    UnityEngine.Networking.PlayerController
    gameObject
    UnityEngine.GameObject)
  (define-field-port
    is-valid?
    #f
    #f
    (property:)
    UnityEngine.Networking.PlayerController
    IsValid
    System.Boolean))

(library (unity-engine networking match join-match-request)
  (export new
          is?
          join-match-request?
          is-valid?
          to-string
          network-id-get
          network-id-set!
          network-id-update!
          public-address-get
          public-address-set!
          public-address-update!
          private-address-get
          private-address-set!
          private-address-update!
          elo-score-get
          elo-score-set!
          elo-score-update!
          password-get
          password-set!
          password-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.JoinMatchRequest
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.JoinMatchRequest a))
  (define (join-match-request? a)
    (clr-is UnityEngine.Networking.Match.JoinMatchRequest a))
  (define-method-port
    is-valid?
    UnityEngine.Networking.Match.JoinMatchRequest
    IsValid
    (System.Boolean))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.JoinMatchRequest
    ToString
    (System.String))
  (define-field-port
    network-id-get
    network-id-set!
    network-id-update!
    (property:)
    UnityEngine.Networking.Match.JoinMatchRequest
    networkId
    UnityEngine.Networking.Types.NetworkID)
  (define-field-port
    public-address-get
    public-address-set!
    public-address-update!
    (property:)
    UnityEngine.Networking.Match.JoinMatchRequest
    publicAddress
    System.String)
  (define-field-port
    private-address-get
    private-address-set!
    private-address-update!
    (property:)
    UnityEngine.Networking.Match.JoinMatchRequest
    privateAddress
    System.String)
  (define-field-port
    elo-score-get
    elo-score-set!
    elo-score-update!
    (property:)
    UnityEngine.Networking.Match.JoinMatchRequest
    eloScore
    System.Int32)
  (define-field-port
    password-get
    password-set!
    password-update!
    (property:)
    UnityEngine.Networking.Match.JoinMatchRequest
    password
    System.String))

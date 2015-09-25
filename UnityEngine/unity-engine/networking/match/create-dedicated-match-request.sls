(library (unity-engine networking match create-dedicated-match-request)
  (export new
          is?
          create-dedicated-match-request?
          is-valid?
          name-get
          name-set!
          name-update!
          size-get
          size-set!
          size-update!
          advertise?-get
          advertise?-set!
          advertise?-update!
          password-get
          password-set!
          password-update!
          public-address-get
          public-address-set!
          public-address-update!
          private-address-get
          private-address-set!
          private-address-update!
          elo-score-get
          elo-score-set!
          elo-score-update!
          match-attributes-get
          match-attributes-set!
          match-attributes-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.CreateDedicatedMatchRequest
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.CreateDedicatedMatchRequest a))
  (define (create-dedicated-match-request? a)
    (clr-is UnityEngine.Networking.Match.CreateDedicatedMatchRequest a))
  (define-method-port
    is-valid?
    UnityEngine.Networking.Match.CreateDedicatedMatchRequest
    IsValid
    (System.Boolean))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchRequest
    name
    System.String)
  (define-field-port
    size-get
    size-set!
    size-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchRequest
    size
    System.UInt32)
  (define-field-port
    advertise?-get
    advertise?-set!
    advertise?-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchRequest
    advertise
    System.Boolean)
  (define-field-port
    password-get
    password-set!
    password-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchRequest
    password
    System.String)
  (define-field-port
    public-address-get
    public-address-set!
    public-address-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchRequest
    publicAddress
    System.String)
  (define-field-port
    private-address-get
    private-address-set!
    private-address-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchRequest
    privateAddress
    System.String)
  (define-field-port
    elo-score-get
    elo-score-set!
    elo-score-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchRequest
    eloScore
    System.Int32)
  (define-field-port
    match-attributes-get
    match-attributes-set!
    match-attributes-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchRequest
    matchAttributes
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.Int64, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))

(library (unity-engine networking match create-match-request)
  (export new
          is?
          create-match-request?
          is-valid?
          to-string
          name-get
          name-set!
          name-update!
          size-get
          size-set!
          size-update!
          public-address-get
          public-address-set!
          public-address-update!
          private-address-get
          private-address-set!
          private-address-update!
          elo-score-get
          elo-score-set!
          elo-score-update!
          advertise?-get
          advertise?-set!
          advertise?-update!
          password-get
          password-set!
          password-update!
          match-attributes-get
          match-attributes-set!
          match-attributes-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.CreateMatchRequest
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.CreateMatchRequest a))
  (define (create-match-request? a)
    (clr-is UnityEngine.Networking.Match.CreateMatchRequest a))
  (define-method-port
    is-valid?
    UnityEngine.Networking.Match.CreateMatchRequest
    IsValid
    (System.Boolean))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.CreateMatchRequest
    ToString
    (System.String))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchRequest
    name
    System.String)
  (define-field-port
    size-get
    size-set!
    size-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchRequest
    size
    System.UInt32)
  (define-field-port
    public-address-get
    public-address-set!
    public-address-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchRequest
    publicAddress
    System.String)
  (define-field-port
    private-address-get
    private-address-set!
    private-address-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchRequest
    privateAddress
    System.String)
  (define-field-port
    elo-score-get
    elo-score-set!
    elo-score-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchRequest
    eloScore
    System.Int32)
  (define-field-port
    advertise?-get
    advertise?-set!
    advertise?-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchRequest
    advertise
    System.Boolean)
  (define-field-port
    password-get
    password-set!
    password-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchRequest
    password
    System.String)
  (define-field-port
    match-attributes-get
    match-attributes-set!
    match-attributes-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchRequest
    matchAttributes
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.Int64, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))

(library (unity-engine networking match match-desc)
  (export new
          is?
          match-desc?
          parse
          to-string
          network-id-get
          network-id-set!
          network-id-update!
          name-get
          name-set!
          name-update!
          average-elo-score-get
          average-elo-score-set!
          average-elo-score-update!
          max-size-get
          max-size-set!
          max-size-update!
          current-size-get
          current-size-set!
          current-size-update!
          is-private?-get
          is-private?-set!
          is-private?-update!
          match-attributes-get
          match-attributes-set!
          match-attributes-update!
          host-node-id-get
          host-node-id-set!
          host-node-id-update!
          direct-connect-infos-get
          direct-connect-infos-set!
          direct-connect-infos-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.Match.MatchDesc a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.Match.MatchDesc a))
  (define (match-desc? a)
    (clr-is UnityEngine.Networking.Match.MatchDesc a))
  (define-method-port
    parse
    UnityEngine.Networking.Match.MatchDesc
    Parse
    (System.Void System.Object))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.MatchDesc
    ToString
    (System.String))
  (define-field-port
    network-id-get
    network-id-set!
    network-id-update!
    (property:)
    UnityEngine.Networking.Match.MatchDesc
    networkId
    UnityEngine.Networking.Types.NetworkID)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    UnityEngine.Networking.Match.MatchDesc
    name
    System.String)
  (define-field-port
    average-elo-score-get
    average-elo-score-set!
    average-elo-score-update!
    (property:)
    UnityEngine.Networking.Match.MatchDesc
    averageEloScore
    System.Int32)
  (define-field-port
    max-size-get
    max-size-set!
    max-size-update!
    (property:)
    UnityEngine.Networking.Match.MatchDesc
    maxSize
    System.Int32)
  (define-field-port
    current-size-get
    current-size-set!
    current-size-update!
    (property:)
    UnityEngine.Networking.Match.MatchDesc
    currentSize
    System.Int32)
  (define-field-port
    is-private?-get
    is-private?-set!
    is-private?-update!
    (property:)
    UnityEngine.Networking.Match.MatchDesc
    isPrivate
    System.Boolean)
  (define-field-port
    match-attributes-get
    match-attributes-set!
    match-attributes-update!
    (property:)
    UnityEngine.Networking.Match.MatchDesc
    matchAttributes
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.Int64, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    host-node-id-get
    host-node-id-set!
    host-node-id-update!
    (property:)
    UnityEngine.Networking.Match.MatchDesc
    hostNodeId
    UnityEngine.Networking.Types.NodeID)
  (define-field-port
    direct-connect-infos-get
    direct-connect-infos-set!
    direct-connect-infos-update!
    (property:)
    UnityEngine.Networking.Match.MatchDesc
    directConnectInfos
    "System.Collections.Generic.List`1[[UnityEngine.Networking.Match.MatchDirectConnectInfo, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]"))

(library (unity-engine networking match match-info)
  (export new
          is?
          match-info?
          to-string
          address
          port
          network-id
          access-token
          node-id
          using-relay?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.Match.MatchInfo a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.Match.MatchInfo a))
  (define (match-info? a)
    (clr-is UnityEngine.Networking.Match.MatchInfo a))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.MatchInfo
    ToString
    (System.String))
  (define-field-port
    address
    #f
    #f
    (property:)
    UnityEngine.Networking.Match.MatchInfo
    address
    System.String)
  (define-field-port
    port
    #f
    #f
    (property:)
    UnityEngine.Networking.Match.MatchInfo
    port
    System.Int32)
  (define-field-port
    network-id
    #f
    #f
    (property:)
    UnityEngine.Networking.Match.MatchInfo
    networkId
    UnityEngine.Networking.Types.NetworkID)
  (define-field-port
    access-token
    #f
    #f
    (property:)
    UnityEngine.Networking.Match.MatchInfo
    accessToken
    UnityEngine.Networking.Types.NetworkAccessToken)
  (define-field-port
    node-id
    #f
    #f
    (property:)
    UnityEngine.Networking.Match.MatchInfo
    nodeId
    UnityEngine.Networking.Types.NodeID)
  (define-field-port
    using-relay?
    #f
    #f
    (property:)
    UnityEngine.Networking.Match.MatchInfo
    usingRelay
    System.Boolean))

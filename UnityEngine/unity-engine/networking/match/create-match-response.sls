(library (unity-engine networking match create-match-response)
  (export new
          is?
          create-match-response?
          parse
          to-string
          address-get
          address-set!
          address-update!
          port-get
          port-set!
          port-update!
          network-id-get
          network-id-set!
          network-id-update!
          access-token-string-get
          access-token-string-set!
          access-token-string-update!
          node-id-get
          node-id-set!
          node-id-update!
          using-relay?-get
          using-relay?-set!
          using-relay?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.CreateMatchResponse
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.CreateMatchResponse a))
  (define (create-match-response? a)
    (clr-is UnityEngine.Networking.Match.CreateMatchResponse a))
  (define-method-port
    parse
    UnityEngine.Networking.Match.CreateMatchResponse
    Parse
    (System.Void System.Object))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.CreateMatchResponse
    ToString
    (System.String))
  (define-field-port
    address-get
    address-set!
    address-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchResponse
    address
    System.String)
  (define-field-port
    port-get
    port-set!
    port-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchResponse
    port
    System.Int32)
  (define-field-port
    network-id-get
    network-id-set!
    network-id-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchResponse
    networkId
    UnityEngine.Networking.Types.NetworkID)
  (define-field-port
    access-token-string-get
    access-token-string-set!
    access-token-string-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchResponse
    accessTokenString
    System.String)
  (define-field-port
    node-id-get
    node-id-set!
    node-id-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchResponse
    nodeId
    UnityEngine.Networking.Types.NodeID)
  (define-field-port
    using-relay?-get
    using-relay?-set!
    using-relay?-update!
    (property:)
    UnityEngine.Networking.Match.CreateMatchResponse
    usingRelay
    System.Boolean))

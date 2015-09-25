(library (unity-engine networking match create-dedicated-match-response)
  (export new
          is?
          create-dedicated-match-response?
          parse
          network-id-get
          network-id-set!
          network-id-update!
          node-id-get
          node-id-set!
          node-id-update!
          address-get
          address-set!
          address-update!
          port-get
          port-set!
          port-update!
          access-token-string-get
          access-token-string-set!
          access-token-string-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.CreateDedicatedMatchResponse
             a
             ...)))))
  (define (is? a)
    (clr-is
      UnityEngine.Networking.Match.CreateDedicatedMatchResponse
      a))
  (define (create-dedicated-match-response? a)
    (clr-is
      UnityEngine.Networking.Match.CreateDedicatedMatchResponse
      a))
  (define-method-port
    parse
    UnityEngine.Networking.Match.CreateDedicatedMatchResponse
    Parse
    (System.Void System.Object))
  (define-field-port
    network-id-get
    network-id-set!
    network-id-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchResponse
    networkId
    UnityEngine.Networking.Types.NetworkID)
  (define-field-port
    node-id-get
    node-id-set!
    node-id-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchResponse
    nodeId
    UnityEngine.Networking.Types.NodeID)
  (define-field-port
    address-get
    address-set!
    address-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchResponse
    address
    System.String)
  (define-field-port
    port-get
    port-set!
    port-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchResponse
    port
    System.Int32)
  (define-field-port
    access-token-string-get
    access-token-string-set!
    access-token-string-update!
    (property:)
    UnityEngine.Networking.Match.CreateDedicatedMatchResponse
    accessTokenString
    System.String))

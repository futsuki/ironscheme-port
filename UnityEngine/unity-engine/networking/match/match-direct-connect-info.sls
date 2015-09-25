(library (unity-engine networking match match-direct-connect-info)
  (export new
          is?
          match-direct-connect-info?
          parse
          to-string
          node-id-get
          node-id-set!
          node-id-update!
          public-address-get
          public-address-set!
          public-address-update!
          private-address-get
          private-address-set!
          private-address-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.MatchDirectConnectInfo
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.MatchDirectConnectInfo a))
  (define (match-direct-connect-info? a)
    (clr-is UnityEngine.Networking.Match.MatchDirectConnectInfo a))
  (define-method-port
    parse
    UnityEngine.Networking.Match.MatchDirectConnectInfo
    Parse
    (System.Void System.Object))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.MatchDirectConnectInfo
    ToString
    (System.String))
  (define-field-port
    node-id-get
    node-id-set!
    node-id-update!
    (property:)
    UnityEngine.Networking.Match.MatchDirectConnectInfo
    nodeId
    UnityEngine.Networking.Types.NodeID)
  (define-field-port
    public-address-get
    public-address-set!
    public-address-update!
    (property:)
    UnityEngine.Networking.Match.MatchDirectConnectInfo
    publicAddress
    System.String)
  (define-field-port
    private-address-get
    private-address-set!
    private-address-update!
    (property:)
    UnityEngine.Networking.Match.MatchDirectConnectInfo
    privateAddress
    System.String))

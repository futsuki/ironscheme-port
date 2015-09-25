(library (unity-engine networking utility)
  (export is?
          utility?
          set-app-id
          set-access-token-for-network
          get-app-id
          get-source-id
          get-access-token-for-network
          use-random-source-id?-get
          use-random-source-id?-set!
          use-random-source-id?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Networking.Utility a))
  (define (utility? a) (clr-is UnityEngine.Networking.Utility a))
  (define-method-port
    set-app-id
    UnityEngine.Networking.Utility
    SetAppID
    (static: System.Void UnityEngine.Networking.Types.AppID))
  (define-method-port
    set-access-token-for-network
    UnityEngine.Networking.Utility
    SetAccessTokenForNetwork
    (static:
      System.Void
      UnityEngine.Networking.Types.NetworkID
      UnityEngine.Networking.Types.NetworkAccessToken))
  (define-method-port
    get-app-id
    UnityEngine.Networking.Utility
    GetAppID
    (static: UnityEngine.Networking.Types.AppID))
  (define-method-port
    get-source-id
    UnityEngine.Networking.Utility
    GetSourceID
    (static: UnityEngine.Networking.Types.SourceID))
  (define-method-port
    get-access-token-for-network
    UnityEngine.Networking.Utility
    GetAccessTokenForNetwork
    (static:
      UnityEngine.Networking.Types.NetworkAccessToken
      UnityEngine.Networking.Types.NetworkID))
  (define-field-port
    use-random-source-id?-get
    use-random-source-id?-set!
    use-random-source-id?-update!
    (static: property:)
    UnityEngine.Networking.Utility
    useRandomSourceID
    System.Boolean))

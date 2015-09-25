(library (unity-engine networking match network-match)
  (export new
          is?
          network-match?
          destroy-match
          list-matches
          join-match
          drop-connection
          create-match
          set-program-app-id
          base-uri-get
          base-uri-set!
          base-uri-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.Match.NetworkMatch a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.Match.NetworkMatch a))
  (define (network-match? a)
    (clr-is UnityEngine.Networking.Match.NetworkMatch a))
  (define-method-port
    destroy-match
    UnityEngine.Networking.Match.NetworkMatch
    DestroyMatch)
  (define-method-port
    list-matches
    UnityEngine.Networking.Match.NetworkMatch
    ListMatches)
  (define-method-port
    join-match
    UnityEngine.Networking.Match.NetworkMatch
    JoinMatch)
  (define-method-port
    drop-connection
    UnityEngine.Networking.Match.NetworkMatch
    DropConnection)
  (define-method-port
    create-match
    UnityEngine.Networking.Match.NetworkMatch
    CreateMatch)
  (define-method-port
    set-program-app-id
    UnityEngine.Networking.Match.NetworkMatch
    SetProgramAppID
    (System.Void UnityEngine.Networking.Types.AppID))
  (define-field-port
    base-uri-get
    base-uri-set!
    base-uri-update!
    (property:)
    UnityEngine.Networking.Match.NetworkMatch
    baseUri
    System.Uri))

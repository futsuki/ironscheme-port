(library (unity-engine networking types network-access-token)
  (export new
          is?
          network-access-token?
          is-valid?
          get-byte-string
          array-get
          array-set!
          array-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Types.NetworkAccessToken
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Types.NetworkAccessToken a))
  (define (network-access-token? a)
    (clr-is UnityEngine.Networking.Types.NetworkAccessToken a))
  (define-method-port
    is-valid?
    UnityEngine.Networking.Types.NetworkAccessToken
    IsValid
    (System.Boolean))
  (define-method-port
    get-byte-string
    UnityEngine.Networking.Types.NetworkAccessToken
    GetByteString
    (System.String))
  (define-field-port
    array-get
    array-set!
    array-update!
    ()
    UnityEngine.Networking.Types.NetworkAccessToken
    array
    System.Byte[]))

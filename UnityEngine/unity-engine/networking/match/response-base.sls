(library (unity-engine networking match response-base)
  (export is? response-base? parse)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Networking.Match.ResponseBase a))
  (define (response-base? a)
    (clr-is UnityEngine.Networking.Match.ResponseBase a))
  (define-method-port
    parse
    UnityEngine.Networking.Match.ResponseBase
    Parse
    (System.Void System.Object)))

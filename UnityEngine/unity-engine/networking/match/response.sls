(library (unity-engine networking match response)
  (export is?
          response?
          parse
          set-success
          set-failure
          to-string
          success?
          extended-info)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Networking.Match.Response a))
  (define (response? a)
    (clr-is UnityEngine.Networking.Match.Response a))
  (define-method-port
    parse
    UnityEngine.Networking.Match.Response
    Parse
    (System.Void System.Object))
  (define-method-port
    set-success
    UnityEngine.Networking.Match.Response
    SetSuccess
    (System.Void))
  (define-method-port
    set-failure
    UnityEngine.Networking.Match.Response
    SetFailure
    (System.Void System.String))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.Response
    ToString
    (System.String))
  (define-field-port
    success?
    #f
    #f
    (property:)
    UnityEngine.Networking.Match.Response
    success
    System.Boolean)
  (define-field-port
    extended-info
    #f
    #f
    (property:)
    UnityEngine.Networking.Match.Response
    extendedInfo
    System.String))

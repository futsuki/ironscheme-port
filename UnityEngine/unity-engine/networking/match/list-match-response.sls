(library (unity-engine networking match list-match-response)
  (export new
          is?
          list-match-response?
          parse
          to-string
          matches-get
          matches-set!
          matches-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.ListMatchResponse
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.ListMatchResponse a))
  (define (list-match-response? a)
    (clr-is UnityEngine.Networking.Match.ListMatchResponse a))
  (define-method-port
    parse
    UnityEngine.Networking.Match.ListMatchResponse
    Parse
    (System.Void System.Object))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.ListMatchResponse
    ToString
    (System.String))
  (define-field-port
    matches-get
    matches-set!
    matches-update!
    (property:)
    UnityEngine.Networking.Match.ListMatchResponse
    matches
    "System.Collections.Generic.List`1[[UnityEngine.Networking.Match.MatchDesc, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]"))

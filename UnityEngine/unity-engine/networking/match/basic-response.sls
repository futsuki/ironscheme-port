(library (unity-engine networking match basic-response)
  (export new is? basic-response?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.BasicResponse
             a
             ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.Match.BasicResponse a))
  (define (basic-response? a)
    (clr-is UnityEngine.Networking.Match.BasicResponse a)))

(library (unity-engine rpc)
  (export new is? rpc?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new UnityEngine.RPC a ...)))))
  (define (is? a) (clr-is UnityEngine.RPC a))
  (define (rpc? a) (clr-is UnityEngine.RPC a)))

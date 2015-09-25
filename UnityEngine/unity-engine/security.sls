(library (unity-engine security)
  (export new
          is?
          security?
          prefetch-socket-policy?
          get-chain-of-trust-value
          load-and-verify-assembly)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Security a ...)))))
  (define (is? a) (clr-is UnityEngine.Security a))
  (define (security? a) (clr-is UnityEngine.Security a))
  (define-method-port
    prefetch-socket-policy?
    UnityEngine.Security
    PrefetchSocketPolicy
    (static: System.Boolean System.String System.Int32 System.Int32)
    (static: System.Boolean System.String System.Int32))
  (define-method-port
    get-chain-of-trust-value
    UnityEngine.Security
    GetChainOfTrustValue
    (static: System.String System.String))
  (define-method-port
    load-and-verify-assembly
    UnityEngine.Security
    LoadAndVerifyAssembly
    (static: System.Reflection.Assembly System.Byte[])
    (static: System.Reflection.Assembly System.Byte[] System.String)))

(library (unity-engine types)
  (export is? types? get-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Types a))
  (define (types? a) (clr-is UnityEngine.Types a))
  (define-method-port
    get-type
    UnityEngine.Types
    GetType
    (static: System.Type System.String System.String)))

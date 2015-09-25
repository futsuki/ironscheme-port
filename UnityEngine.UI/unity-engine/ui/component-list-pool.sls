(library (unity-engine ui component-list-pool)
  (export is? component-list-pool? get release)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.ComponentListPool a))
  (define (component-list-pool? a)
    (clr-is UnityEngine.UI.ComponentListPool a))
  (define-method-port
    get
    UnityEngine.UI.ComponentListPool
    Get
    (static:
      "System.Collections.Generic.List`1[[UnityEngine.Component, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
  (define-method-port release UnityEngine.UI.ComponentListPool Release))

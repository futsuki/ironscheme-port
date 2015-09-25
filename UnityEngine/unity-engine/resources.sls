(library (unity-engine resources)
  (export new
          is?
          resources?
          load
          get-builtin-resource
          unload-unused-assets
          unload-asset
          load-all
          find-objects-of-type-all
          load-asset-at-path
          load-async)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Resources a ...)))))
  (define (is? a) (clr-is UnityEngine.Resources a))
  (define (resources? a) (clr-is UnityEngine.Resources a))
  (define-method-port
    load
    UnityEngine.Resources
    Load
    (static: UnityEngine.Object System.String System.Type)
    (static: UnityEngine.Object System.String))
  (define-method-port
    get-builtin-resource
    UnityEngine.Resources
    GetBuiltinResource
    (static: UnityEngine.Object System.Type System.String))
  (define-method-port
    unload-unused-assets
    UnityEngine.Resources
    UnloadUnusedAssets
    (static: UnityEngine.AsyncOperation))
  (define-method-port
    unload-asset
    UnityEngine.Resources
    UnloadAsset
    (static: System.Void UnityEngine.Object))
  (define-method-port
    load-all
    UnityEngine.Resources
    LoadAll
    (static: UnityEngine.Object[] System.String)
    (static: UnityEngine.Object[] System.String System.Type))
  (define-method-port
    find-objects-of-type-all
    UnityEngine.Resources
    FindObjectsOfTypeAll
    (static: UnityEngine.Object[] System.Type))
  (define-method-port
    load-asset-at-path
    UnityEngine.Resources
    LoadAssetAtPath
    (static: UnityEngine.Object System.String System.Type))
  (define-method-port
    load-async
    UnityEngine.Resources
    LoadAsync
    (static: UnityEngine.ResourceRequest System.String System.Type)
    (static: UnityEngine.ResourceRequest System.String)))

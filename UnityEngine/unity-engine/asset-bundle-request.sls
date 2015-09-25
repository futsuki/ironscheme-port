(library (unity-engine asset-bundle-request)
  (export new is? asset-bundle-request? asset all-assets)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AssetBundleRequest a ...)))))
  (define (is? a) (clr-is UnityEngine.AssetBundleRequest a))
  (define (asset-bundle-request? a)
    (clr-is UnityEngine.AssetBundleRequest a))
  (define-field-port
    asset
    #f
    #f
    (property:)
    UnityEngine.AssetBundleRequest
    asset
    UnityEngine.Object)
  (define-field-port
    all-assets
    #f
    #f
    (property:)
    UnityEngine.AssetBundleRequest
    allAssets
    UnityEngine.Object[]))

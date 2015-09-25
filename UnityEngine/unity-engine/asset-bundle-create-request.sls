(library (unity-engine asset-bundle-create-request)
  (export new is? asset-bundle-create-request? asset-bundle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.AssetBundleCreateRequest a ...)))))
  (define (is? a) (clr-is UnityEngine.AssetBundleCreateRequest a))
  (define (asset-bundle-create-request? a)
    (clr-is UnityEngine.AssetBundleCreateRequest a))
  (define-field-port
    asset-bundle
    #f
    #f
    (property:)
    UnityEngine.AssetBundleCreateRequest
    assetBundle
    UnityEngine.AssetBundle))

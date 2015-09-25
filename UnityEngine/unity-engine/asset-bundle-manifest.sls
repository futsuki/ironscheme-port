(library (unity-engine asset-bundle-manifest)
  (export new
          is?
          asset-bundle-manifest?
          get-all-dependencies
          get-asset-bundle-hash
          get-direct-dependencies
          get-all-asset-bundles
          get-all-asset-bundles-with-variant)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AssetBundleManifest a ...)))))
  (define (is? a) (clr-is UnityEngine.AssetBundleManifest a))
  (define (asset-bundle-manifest? a)
    (clr-is UnityEngine.AssetBundleManifest a))
  (define-method-port
    get-all-dependencies
    UnityEngine.AssetBundleManifest
    GetAllDependencies
    (System.String[] System.String))
  (define-method-port
    get-asset-bundle-hash
    UnityEngine.AssetBundleManifest
    GetAssetBundleHash
    (UnityEngine.Hash128 System.String))
  (define-method-port
    get-direct-dependencies
    UnityEngine.AssetBundleManifest
    GetDirectDependencies
    (System.String[] System.String))
  (define-method-port
    get-all-asset-bundles
    UnityEngine.AssetBundleManifest
    GetAllAssetBundles
    (System.String[]))
  (define-method-port
    get-all-asset-bundles-with-variant
    UnityEngine.AssetBundleManifest
    GetAllAssetBundlesWithVariant
    (System.String[])))

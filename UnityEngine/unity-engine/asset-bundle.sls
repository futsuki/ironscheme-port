(library (unity-engine asset-bundle)
  (export new
          is?
          asset-bundle?
          load-asset-with-sub-assets-async
          load
          create-from-file
          create-from-memory
          load-all-assets-async
          get-all-scene-paths
          load-asset
          get-all-asset-names
          contains?
          load-asset-with-sub-assets
          create-from-memory-immediate
          load-all
          unload
          load-asset-async
          load-all-assets
          load-async
          all-asset-names
          main-asset)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AssetBundle a ...)))))
  (define (is? a) (clr-is UnityEngine.AssetBundle a))
  (define (asset-bundle? a) (clr-is UnityEngine.AssetBundle a))
  (define-method-port
    load-asset-with-sub-assets-async
    UnityEngine.AssetBundle
    LoadAssetWithSubAssetsAsync
    (UnityEngine.AssetBundleRequest System.String System.Type)
    (UnityEngine.AssetBundleRequest System.String))
  (define-method-port
    load
    UnityEngine.AssetBundle
    Load
    (UnityEngine.Object System.String System.Type)
    (UnityEngine.Object System.String))
  (define-method-port
    create-from-file
    UnityEngine.AssetBundle
    CreateFromFile
    (static: UnityEngine.AssetBundle System.String))
  (define-method-port
    create-from-memory
    UnityEngine.AssetBundle
    CreateFromMemory
    (static: UnityEngine.AssetBundleCreateRequest System.Byte[]))
  (define-method-port
    load-all-assets-async
    UnityEngine.AssetBundle
    LoadAllAssetsAsync
    (UnityEngine.AssetBundleRequest System.Type)
    (UnityEngine.AssetBundleRequest))
  (define-method-port
    get-all-scene-paths
    UnityEngine.AssetBundle
    GetAllScenePaths
    (System.String[]))
  (define-method-port
    load-asset
    UnityEngine.AssetBundle
    LoadAsset
    (UnityEngine.Object System.String System.Type)
    (UnityEngine.Object System.String))
  (define-method-port
    get-all-asset-names
    UnityEngine.AssetBundle
    GetAllAssetNames
    (System.String[]))
  (define-method-port
    contains?
    UnityEngine.AssetBundle
    Contains
    (System.Boolean System.String))
  (define-method-port
    load-asset-with-sub-assets
    UnityEngine.AssetBundle
    LoadAssetWithSubAssets
    (UnityEngine.Object[] System.String System.Type)
    (UnityEngine.Object[] System.String))
  (define-method-port
    create-from-memory-immediate
    UnityEngine.AssetBundle
    CreateFromMemoryImmediate
    (static: UnityEngine.AssetBundle System.Byte[]))
  (define-method-port
    load-all
    UnityEngine.AssetBundle
    LoadAll
    (UnityEngine.Object[])
    (UnityEngine.Object[] System.Type))
  (define-method-port
    unload
    UnityEngine.AssetBundle
    Unload
    (System.Void System.Boolean))
  (define-method-port
    load-asset-async
    UnityEngine.AssetBundle
    LoadAssetAsync
    (UnityEngine.AssetBundleRequest System.String System.Type)
    (UnityEngine.AssetBundleRequest System.String))
  (define-method-port
    load-all-assets
    UnityEngine.AssetBundle
    LoadAllAssets
    (UnityEngine.Object[] System.Type)
    (UnityEngine.Object[]))
  (define-method-port
    load-async
    UnityEngine.AssetBundle
    LoadAsync
    (UnityEngine.AssetBundleRequest System.String System.Type))
  (define-method-port
    all-asset-names
    UnityEngine.AssetBundle
    AllAssetNames
    (System.String[]))
  (define-field-port
    main-asset
    #f
    #f
    (property:)
    UnityEngine.AssetBundle
    mainAsset
    UnityEngine.Object))

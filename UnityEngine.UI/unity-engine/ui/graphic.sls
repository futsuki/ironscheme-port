(library (unity-engine ui graphic)
  (export is?
          graphic?
          set-layout-dirty
          on-rebuild-requested
          register-dirty-material-callback
          cross-fade-alpha
          set-all-dirty
          unregister-dirty-material-callback
          register-dirty-vertices-callback
          set-material-dirty
          pixel-adjust-point
          get-pixel-adjusted-rect
          unregister-dirty-layout-callback
          register-dirty-layout-callback
          raycast?
          rebuild
          set-vertices-dirty
          unregister-dirty-vertices-callback
          cross-fade-color
          set-native-size
          default-graphic-material
          color-get
          color-set!
          color-update!
          depth
          rect-transform
          canvas
          canvas-renderer
          default-material
          material-get
          material-set!
          material-update!
          material-for-rendering
          main-texture)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.Graphic a))
  (define (graphic? a) (clr-is UnityEngine.UI.Graphic a))
  (define-method-port
    set-layout-dirty
    UnityEngine.UI.Graphic
    SetLayoutDirty
    (System.Void))
  (define-method-port
    on-rebuild-requested
    UnityEngine.UI.Graphic
    OnRebuildRequested
    (System.Void))
  (define-method-port
    register-dirty-material-callback
    UnityEngine.UI.Graphic
    RegisterDirtyMaterialCallback
    (System.Void UnityEngine.Events.UnityAction))
  (define-method-port
    cross-fade-alpha
    UnityEngine.UI.Graphic
    CrossFadeAlpha
    (System.Void System.Single System.Single System.Boolean))
  (define-method-port
    set-all-dirty
    UnityEngine.UI.Graphic
    SetAllDirty
    (System.Void))
  (define-method-port
    unregister-dirty-material-callback
    UnityEngine.UI.Graphic
    UnregisterDirtyMaterialCallback
    (System.Void UnityEngine.Events.UnityAction))
  (define-method-port
    register-dirty-vertices-callback
    UnityEngine.UI.Graphic
    RegisterDirtyVerticesCallback
    (System.Void UnityEngine.Events.UnityAction))
  (define-method-port
    set-material-dirty
    UnityEngine.UI.Graphic
    SetMaterialDirty
    (System.Void))
  (define-method-port
    pixel-adjust-point
    UnityEngine.UI.Graphic
    PixelAdjustPoint
    (UnityEngine.Vector2 UnityEngine.Vector2))
  (define-method-port
    get-pixel-adjusted-rect
    UnityEngine.UI.Graphic
    GetPixelAdjustedRect
    (UnityEngine.Rect))
  (define-method-port
    unregister-dirty-layout-callback
    UnityEngine.UI.Graphic
    UnregisterDirtyLayoutCallback
    (System.Void UnityEngine.Events.UnityAction))
  (define-method-port
    register-dirty-layout-callback
    UnityEngine.UI.Graphic
    RegisterDirtyLayoutCallback
    (System.Void UnityEngine.Events.UnityAction))
  (define-method-port
    raycast?
    UnityEngine.UI.Graphic
    Raycast
    (System.Boolean UnityEngine.Vector2 UnityEngine.Camera))
  (define-method-port
    rebuild
    UnityEngine.UI.Graphic
    Rebuild
    (System.Void UnityEngine.UI.CanvasUpdate))
  (define-method-port
    set-vertices-dirty
    UnityEngine.UI.Graphic
    SetVerticesDirty
    (System.Void))
  (define-method-port
    unregister-dirty-vertices-callback
    UnityEngine.UI.Graphic
    UnregisterDirtyVerticesCallback
    (System.Void UnityEngine.Events.UnityAction))
  (define-method-port
    cross-fade-color
    UnityEngine.UI.Graphic
    CrossFadeColor
    (System.Void
      UnityEngine.Color
      System.Single
      System.Boolean
      System.Boolean))
  (define-method-port
    set-native-size
    UnityEngine.UI.Graphic
    SetNativeSize
    (System.Void))
  (define-field-port
    default-graphic-material
    #f
    #f
    (static: property:)
    UnityEngine.UI.Graphic
    defaultGraphicMaterial
    UnityEngine.Material)
  (define-field-port
    color-get
    color-set!
    color-update!
    (property:)
    UnityEngine.UI.Graphic
    color
    UnityEngine.Color)
  (define-field-port
    depth
    #f
    #f
    (property:)
    UnityEngine.UI.Graphic
    depth
    System.Int32)
  (define-field-port
    rect-transform
    #f
    #f
    (property:)
    UnityEngine.UI.Graphic
    rectTransform
    UnityEngine.RectTransform)
  (define-field-port
    canvas
    #f
    #f
    (property:)
    UnityEngine.UI.Graphic
    canvas
    UnityEngine.Canvas)
  (define-field-port
    canvas-renderer
    #f
    #f
    (property:)
    UnityEngine.UI.Graphic
    canvasRenderer
    UnityEngine.CanvasRenderer)
  (define-field-port
    default-material
    #f
    #f
    (property:)
    UnityEngine.UI.Graphic
    defaultMaterial
    UnityEngine.Material)
  (define-field-port
    material-get
    material-set!
    material-update!
    (property:)
    UnityEngine.UI.Graphic
    material
    UnityEngine.Material)
  (define-field-port
    material-for-rendering
    #f
    #f
    (property:)
    UnityEngine.UI.Graphic
    materialForRendering
    UnityEngine.Material)
  (define-field-port
    main-texture
    #f
    #f
    (property:)
    UnityEngine.UI.Graphic
    mainTexture
    UnityEngine.Texture))
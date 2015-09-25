(library (unity-engine ui raw-image)
  (export is?
          raw-image?
          set-native-size
          main-texture
          texture-get
          texture-set!
          texture-update!
          uv-rect-get
          uv-rect-set!
          uv-rect-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.RawImage a))
  (define (raw-image? a) (clr-is UnityEngine.UI.RawImage a))
  (define-method-port
    set-native-size
    UnityEngine.UI.RawImage
    SetNativeSize
    (System.Void))
  (define-field-port
    main-texture
    #f
    #f
    (property:)
    UnityEngine.UI.RawImage
    mainTexture
    UnityEngine.Texture)
  (define-field-port
    texture-get
    texture-set!
    texture-update!
    (property:)
    UnityEngine.UI.RawImage
    texture
    UnityEngine.Texture)
  (define-field-port
    uv-rect-get
    uv-rect-set!
    uv-rect-update!
    (property:)
    UnityEngine.UI.RawImage
    uvRect
    UnityEngine.Rect))

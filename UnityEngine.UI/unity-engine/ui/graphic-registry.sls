(library (unity-engine ui graphic-registry)
  (export is?
          graphic-registry?
          get-graphics-for-canvas
          register-graphic-for-canvas
          unregister-graphic-for-canvas
          instance)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.GraphicRegistry a))
  (define (graphic-registry? a)
    (clr-is UnityEngine.UI.GraphicRegistry a))
  (define-method-port
    get-graphics-for-canvas
    UnityEngine.UI.GraphicRegistry
    GetGraphicsForCanvas
    (static:
      "System.Collections.Generic.IList`1[[UnityEngine.UI.Graphic, UnityEngine.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]"
      UnityEngine.Canvas))
  (define-method-port
    register-graphic-for-canvas
    UnityEngine.UI.GraphicRegistry
    RegisterGraphicForCanvas
    (static: System.Void UnityEngine.Canvas UnityEngine.UI.Graphic))
  (define-method-port
    unregister-graphic-for-canvas
    UnityEngine.UI.GraphicRegistry
    UnregisterGraphicForCanvas
    (static: System.Void UnityEngine.Canvas UnityEngine.UI.Graphic))
  (define-field-port
    instance
    #f
    #f
    (static: property:)
    UnityEngine.UI.GraphicRegistry
    instance
    UnityEngine.UI.GraphicRegistry))

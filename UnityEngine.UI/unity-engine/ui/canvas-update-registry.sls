(library (unity-engine ui canvas-update-registry)
  (export is?
          canvas-update-registry?
          is-rebuilding-layout?
          register-canvas-element-for-layout-rebuild
          un-register-canvas-element-for-rebuild
          is-rebuilding-graphics?
          register-canvas-element-for-graphic-rebuild
          instance)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.CanvasUpdateRegistry a))
  (define (canvas-update-registry? a)
    (clr-is UnityEngine.UI.CanvasUpdateRegistry a))
  (define-method-port
    is-rebuilding-layout?
    UnityEngine.UI.CanvasUpdateRegistry
    IsRebuildingLayout
    (static: System.Boolean))
  (define-method-port
    register-canvas-element-for-layout-rebuild
    UnityEngine.UI.CanvasUpdateRegistry
    RegisterCanvasElementForLayoutRebuild
    (static: System.Void UnityEngine.UI.ICanvasElement))
  (define-method-port
    un-register-canvas-element-for-rebuild
    UnityEngine.UI.CanvasUpdateRegistry
    UnRegisterCanvasElementForRebuild
    (static: System.Void UnityEngine.UI.ICanvasElement))
  (define-method-port
    is-rebuilding-graphics?
    UnityEngine.UI.CanvasUpdateRegistry
    IsRebuildingGraphics
    (static: System.Boolean))
  (define-method-port
    register-canvas-element-for-graphic-rebuild
    UnityEngine.UI.CanvasUpdateRegistry
    RegisterCanvasElementForGraphicRebuild
    (static: System.Void UnityEngine.UI.ICanvasElement))
  (define-field-port
    instance
    #f
    #f
    (static: property:)
    UnityEngine.UI.CanvasUpdateRegistry
    instance
    UnityEngine.UI.CanvasUpdateRegistry))

(library (unity-engine ui layout-utility)
  (export is?
          layout-utility?
          get-layout-property
          get-flexible-width
          get-preferred-width
          get-preferred-height
          get-min-size
          get-min-height
          get-flexible-height
          get-flexible-size
          get-min-width
          get-preferred-size)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.UI.LayoutUtility a))
  (define (layout-utility? a) (clr-is UnityEngine.UI.LayoutUtility a))
  (define-method-port
    get-layout-property
    UnityEngine.UI.LayoutUtility
    GetLayoutProperty)
  (define-method-port
    get-flexible-width
    UnityEngine.UI.LayoutUtility
    GetFlexibleWidth
    (static: System.Single UnityEngine.RectTransform))
  (define-method-port
    get-preferred-width
    UnityEngine.UI.LayoutUtility
    GetPreferredWidth
    (static: System.Single UnityEngine.RectTransform))
  (define-method-port
    get-preferred-height
    UnityEngine.UI.LayoutUtility
    GetPreferredHeight
    (static: System.Single UnityEngine.RectTransform))
  (define-method-port
    get-min-size
    UnityEngine.UI.LayoutUtility
    GetMinSize
    (static: System.Single UnityEngine.RectTransform System.Int32))
  (define-method-port
    get-min-height
    UnityEngine.UI.LayoutUtility
    GetMinHeight
    (static: System.Single UnityEngine.RectTransform))
  (define-method-port
    get-flexible-height
    UnityEngine.UI.LayoutUtility
    GetFlexibleHeight
    (static: System.Single UnityEngine.RectTransform))
  (define-method-port
    get-flexible-size
    UnityEngine.UI.LayoutUtility
    GetFlexibleSize
    (static: System.Single UnityEngine.RectTransform System.Int32))
  (define-method-port
    get-min-width
    UnityEngine.UI.LayoutUtility
    GetMinWidth
    (static: System.Single UnityEngine.RectTransform))
  (define-method-port
    get-preferred-size
    UnityEngine.UI.LayoutUtility
    GetPreferredSize
    (static: System.Single UnityEngine.RectTransform System.Int32)))

(library (unity-engine ui horizontal-or-vertical-layout-group)
  (export is?
          horizontal-or-vertical-layout-group?
          spacing-get
          spacing-set!
          spacing-update!
          child-force-expand-width?-get
          child-force-expand-width?-set!
          child-force-expand-width?-update!
          child-force-expand-height?-get
          child-force-expand-height?-set!
          child-force-expand-height?-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is UnityEngine.UI.HorizontalOrVerticalLayoutGroup a))
  (define (horizontal-or-vertical-layout-group? a)
    (clr-is UnityEngine.UI.HorizontalOrVerticalLayoutGroup a))
  (define-field-port
    spacing-get
    spacing-set!
    spacing-update!
    (property:)
    UnityEngine.UI.HorizontalOrVerticalLayoutGroup
    spacing
    System.Single)
  (define-field-port
    child-force-expand-width?-get
    child-force-expand-width?-set!
    child-force-expand-width?-update!
    (property:)
    UnityEngine.UI.HorizontalOrVerticalLayoutGroup
    childForceExpandWidth
    System.Boolean)
  (define-field-port
    child-force-expand-height?-get
    child-force-expand-height?-set!
    child-force-expand-height?-update!
    (property:)
    UnityEngine.UI.HorizontalOrVerticalLayoutGroup
    childForceExpandHeight
    System.Boolean))

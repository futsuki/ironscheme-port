(library (unity-engine canvas-group)
  (export new
          is?
          canvas-group?
          is-raycast-location-valid?
          alpha-get
          alpha-set!
          alpha-update!
          interactable?-get
          interactable?-set!
          interactable?-update!
          blocks-raycasts?-get
          blocks-raycasts?-set!
          blocks-raycasts?-update!
          ignore-parent-groups?-get
          ignore-parent-groups?-set!
          ignore-parent-groups?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.CanvasGroup a ...)))))
  (define (is? a) (clr-is UnityEngine.CanvasGroup a))
  (define (canvas-group? a) (clr-is UnityEngine.CanvasGroup a))
  (define-method-port
    is-raycast-location-valid?
    UnityEngine.CanvasGroup
    IsRaycastLocationValid
    (System.Boolean UnityEngine.Vector2 UnityEngine.Camera))
  (define-field-port
    alpha-get
    alpha-set!
    alpha-update!
    (property:)
    UnityEngine.CanvasGroup
    alpha
    System.Single)
  (define-field-port
    interactable?-get
    interactable?-set!
    interactable?-update!
    (property:)
    UnityEngine.CanvasGroup
    interactable
    System.Boolean)
  (define-field-port
    blocks-raycasts?-get
    blocks-raycasts?-set!
    blocks-raycasts?-update!
    (property:)
    UnityEngine.CanvasGroup
    blocksRaycasts
    System.Boolean)
  (define-field-port
    ignore-parent-groups?-get
    ignore-parent-groups?-set!
    ignore-parent-groups?-update!
    (property:)
    UnityEngine.CanvasGroup
    ignoreParentGroups
    System.Boolean))

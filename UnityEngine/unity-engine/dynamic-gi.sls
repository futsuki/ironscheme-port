(library (unity-engine dynamic-gi)
  (export new
          is?
          dynamic-gi?
          set-emissive
          update-environment
          update-materials
          indirect-scale-get
          indirect-scale-set!
          indirect-scale-update!
          update-threshold-get
          update-threshold-set!
          update-threshold-update!
          synchronous-mode?-get
          synchronous-mode?-set!
          synchronous-mode?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.DynamicGI a ...)))))
  (define (is? a) (clr-is UnityEngine.DynamicGI a))
  (define (dynamic-gi? a) (clr-is UnityEngine.DynamicGI a))
  (define-method-port
    set-emissive
    UnityEngine.DynamicGI
    SetEmissive
    (static: System.Void UnityEngine.Renderer UnityEngine.Color))
  (define-method-port
    update-environment
    UnityEngine.DynamicGI
    UpdateEnvironment
    (static: System.Void))
  (define-method-port
    update-materials
    UnityEngine.DynamicGI
    UpdateMaterials
    (static:
      System.Void
      UnityEngine.Terrain
      System.Int32
      System.Int32
      System.Int32
      System.Int32)
    (static: System.Void UnityEngine.Terrain)
    (static: System.Void UnityEngine.Renderer))
  (define-field-port
    indirect-scale-get
    indirect-scale-set!
    indirect-scale-update!
    (static: property:)
    UnityEngine.DynamicGI
    indirectScale
    System.Single)
  (define-field-port
    update-threshold-get
    update-threshold-set!
    update-threshold-update!
    (static: property:)
    UnityEngine.DynamicGI
    updateThreshold
    System.Single)
  (define-field-port
    synchronous-mode?-get
    synchronous-mode?-set!
    synchronous-mode?-update!
    (static: property:)
    UnityEngine.DynamicGI
    synchronousMode
    System.Boolean))

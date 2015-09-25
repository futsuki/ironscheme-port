(library (unity-engine lodgroup)
  (export new
          is?
          lodgroup?
          force-lod
          set-lods
          recalculate-bounds
          set-lods
          get-lods
          local-reference-point-get
          local-reference-point-set!
          local-reference-point-update!
          size-get
          size-set!
          size-update!
          lod-count
          fade-mode-get
          fade-mode-set!
          fade-mode-update!
          animate-cross-fading?-get
          animate-cross-fading?-set!
          animate-cross-fading?-update!
          enabled?-get
          enabled?-set!
          enabled?-update!
          cross-fade-animation-duration-get
          cross-fade-animation-duration-set!
          cross-fade-animation-duration-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.LODGroup a ...)))))
  (define (is? a) (clr-is UnityEngine.LODGroup a))
  (define (lodgroup? a) (clr-is UnityEngine.LODGroup a))
  (define-method-port
    force-lod
    UnityEngine.LODGroup
    ForceLOD
    (System.Void System.Int32))
  (define-method-port
    set-lods
    UnityEngine.LODGroup
    SetLODS
    (System.Void UnityEngine.LOD[]))
  (define-method-port
    recalculate-bounds
    UnityEngine.LODGroup
    RecalculateBounds
    (System.Void))
  (define-method-port
    set-lods
    UnityEngine.LODGroup
    SetLODs
    (System.Void UnityEngine.LOD[]))
  (define-method-port
    get-lods
    UnityEngine.LODGroup
    GetLODs
    (UnityEngine.LOD[]))
  (define-field-port
    local-reference-point-get
    local-reference-point-set!
    local-reference-point-update!
    (property:)
    UnityEngine.LODGroup
    localReferencePoint
    UnityEngine.Vector3)
  (define-field-port
    size-get
    size-set!
    size-update!
    (property:)
    UnityEngine.LODGroup
    size
    System.Single)
  (define-field-port
    lod-count
    #f
    #f
    (property:)
    UnityEngine.LODGroup
    lodCount
    System.Int32)
  (define-field-port
    fade-mode-get
    fade-mode-set!
    fade-mode-update!
    (property:)
    UnityEngine.LODGroup
    fadeMode
    UnityEngine.LODFadeMode)
  (define-field-port
    animate-cross-fading?-get
    animate-cross-fading?-set!
    animate-cross-fading?-update!
    (property:)
    UnityEngine.LODGroup
    animateCrossFading
    System.Boolean)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    UnityEngine.LODGroup
    enabled
    System.Boolean)
  (define-field-port
    cross-fade-animation-duration-get
    cross-fade-animation-duration-set!
    cross-fade-animation-duration-update!
    (static: property:)
    UnityEngine.LODGroup
    crossFadeAnimationDuration
    System.Single))

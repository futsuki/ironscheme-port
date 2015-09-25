(library (unity-engine skinned-mesh-renderer)
  (export new
          is?
          skinned-mesh-renderer?
          bake-mesh
          get-blend-shape-weight
          set-blend-shape-weight
          bones-get
          bones-set!
          bones-update!
          root-bone-get
          root-bone-set!
          root-bone-update!
          quality-get
          quality-set!
          quality-update!
          shared-mesh-get
          shared-mesh-set!
          shared-mesh-update!
          update-when-offscreen?-get
          update-when-offscreen?-set!
          update-when-offscreen?-update!
          local-bounds-get
          local-bounds-set!
          local-bounds-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SkinnedMeshRenderer a ...)))))
  (define (is? a) (clr-is UnityEngine.SkinnedMeshRenderer a))
  (define (skinned-mesh-renderer? a)
    (clr-is UnityEngine.SkinnedMeshRenderer a))
  (define-method-port
    bake-mesh
    UnityEngine.SkinnedMeshRenderer
    BakeMesh
    (System.Void UnityEngine.Mesh))
  (define-method-port
    get-blend-shape-weight
    UnityEngine.SkinnedMeshRenderer
    GetBlendShapeWeight
    (System.Single System.Int32))
  (define-method-port
    set-blend-shape-weight
    UnityEngine.SkinnedMeshRenderer
    SetBlendShapeWeight
    (System.Void System.Int32 System.Single))
  (define-field-port
    bones-get
    bones-set!
    bones-update!
    (property:)
    UnityEngine.SkinnedMeshRenderer
    bones
    UnityEngine.Transform[])
  (define-field-port
    root-bone-get
    root-bone-set!
    root-bone-update!
    (property:)
    UnityEngine.SkinnedMeshRenderer
    rootBone
    UnityEngine.Transform)
  (define-field-port
    quality-get
    quality-set!
    quality-update!
    (property:)
    UnityEngine.SkinnedMeshRenderer
    quality
    UnityEngine.SkinQuality)
  (define-field-port
    shared-mesh-get
    shared-mesh-set!
    shared-mesh-update!
    (property:)
    UnityEngine.SkinnedMeshRenderer
    sharedMesh
    UnityEngine.Mesh)
  (define-field-port
    update-when-offscreen?-get
    update-when-offscreen?-set!
    update-when-offscreen?-update!
    (property:)
    UnityEngine.SkinnedMeshRenderer
    updateWhenOffscreen
    System.Boolean)
  (define-field-port
    local-bounds-get
    local-bounds-set!
    local-bounds-update!
    (property:)
    UnityEngine.SkinnedMeshRenderer
    localBounds
    UnityEngine.Bounds))

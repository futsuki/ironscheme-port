(library (unity-engine transform)
  (export is?
          transform?
          translate
          find
          is-child-of?
          transform-vector
          transform-point
          set-sibling-index
          rotate-around
          get-sibling-index
          find-child
          get-enumerator
          detach-children
          transform-direction
          look-at
          get-child
          set-as-first-sibling
          get-child-count
          inverse-transform-direction
          set-as-last-sibling
          rotate
          rotate-around-local
          inverse-transform-point
          set-parent
          inverse-transform-vector
          position-get
          position-set!
          position-update!
          local-position-get
          local-position-set!
          local-position-update!
          euler-angles-get
          euler-angles-set!
          euler-angles-update!
          local-euler-angles-get
          local-euler-angles-set!
          local-euler-angles-update!
          right-get
          right-set!
          right-update!
          up-get
          up-set!
          up-update!
          forward-get
          forward-set!
          forward-update!
          rotation-get
          rotation-set!
          rotation-update!
          local-rotation-get
          local-rotation-set!
          local-rotation-update!
          local-scale-get
          local-scale-set!
          local-scale-update!
          parent-get
          parent-set!
          parent-update!
          world-to-local-matrix
          local-to-world-matrix
          root
          child-count
          lossy-scale
          has-changed?-get
          has-changed?-set!
          has-changed?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Transform a))
  (define (transform? a) (clr-is UnityEngine.Transform a))
  (define-method-port
    translate
    UnityEngine.Transform
    Translate
    (System.Void
      System.Single
      System.Single
      System.Single
      UnityEngine.Transform)
    (System.Void UnityEngine.Vector3 UnityEngine.Transform)
    (System.Void
      System.Single
      System.Single
      System.Single
      UnityEngine.Space)
    (System.Void System.Single System.Single System.Single)
    (System.Void UnityEngine.Vector3 UnityEngine.Space)
    (System.Void UnityEngine.Vector3))
  (define-method-port
    find
    UnityEngine.Transform
    Find
    (UnityEngine.Transform System.String))
  (define-method-port
    is-child-of?
    UnityEngine.Transform
    IsChildOf
    (System.Boolean UnityEngine.Transform))
  (define-method-port
    transform-vector
    UnityEngine.Transform
    TransformVector
    (UnityEngine.Vector3 System.Single System.Single System.Single)
    (UnityEngine.Vector3 UnityEngine.Vector3))
  (define-method-port
    transform-point
    UnityEngine.Transform
    TransformPoint
    (UnityEngine.Vector3 System.Single System.Single System.Single)
    (UnityEngine.Vector3 UnityEngine.Vector3))
  (define-method-port
    set-sibling-index
    UnityEngine.Transform
    SetSiblingIndex
    (System.Void System.Int32))
  (define-method-port
    rotate-around
    UnityEngine.Transform
    RotateAround
    (System.Void UnityEngine.Vector3 System.Single)
    (System.Void UnityEngine.Vector3 UnityEngine.Vector3 System.Single))
  (define-method-port
    get-sibling-index
    UnityEngine.Transform
    GetSiblingIndex
    (System.Int32))
  (define-method-port
    find-child
    UnityEngine.Transform
    FindChild
    (UnityEngine.Transform System.String))
  (define-method-port
    get-enumerator
    UnityEngine.Transform
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    detach-children
    UnityEngine.Transform
    DetachChildren
    (System.Void))
  (define-method-port
    transform-direction
    UnityEngine.Transform
    TransformDirection
    (UnityEngine.Vector3 System.Single System.Single System.Single)
    (UnityEngine.Vector3 UnityEngine.Vector3))
  (define-method-port
    look-at
    UnityEngine.Transform
    LookAt
    (System.Void UnityEngine.Vector3)
    (System.Void UnityEngine.Vector3 UnityEngine.Vector3)
    (System.Void UnityEngine.Transform UnityEngine.Vector3)
    (System.Void UnityEngine.Transform))
  (define-method-port
    get-child
    UnityEngine.Transform
    GetChild
    (UnityEngine.Transform System.Int32))
  (define-method-port
    set-as-first-sibling
    UnityEngine.Transform
    SetAsFirstSibling
    (System.Void))
  (define-method-port
    get-child-count
    UnityEngine.Transform
    GetChildCount
    (System.Int32))
  (define-method-port
    inverse-transform-direction
    UnityEngine.Transform
    InverseTransformDirection
    (UnityEngine.Vector3 System.Single System.Single System.Single)
    (UnityEngine.Vector3 UnityEngine.Vector3))
  (define-method-port
    set-as-last-sibling
    UnityEngine.Transform
    SetAsLastSibling
    (System.Void))
  (define-method-port
    rotate
    UnityEngine.Transform
    Rotate
    (System.Void UnityEngine.Vector3 System.Single UnityEngine.Space)
    (System.Void UnityEngine.Vector3 System.Single)
    (System.Void
      System.Single
      System.Single
      System.Single
      UnityEngine.Space)
    (System.Void System.Single System.Single System.Single)
    (System.Void UnityEngine.Vector3 UnityEngine.Space)
    (System.Void UnityEngine.Vector3))
  (define-method-port
    rotate-around-local
    UnityEngine.Transform
    RotateAroundLocal
    (System.Void UnityEngine.Vector3 System.Single))
  (define-method-port
    inverse-transform-point
    UnityEngine.Transform
    InverseTransformPoint
    (UnityEngine.Vector3 System.Single System.Single System.Single)
    (UnityEngine.Vector3 UnityEngine.Vector3))
  (define-method-port
    set-parent
    UnityEngine.Transform
    SetParent
    (System.Void UnityEngine.Transform System.Boolean)
    (System.Void UnityEngine.Transform))
  (define-method-port
    inverse-transform-vector
    UnityEngine.Transform
    InverseTransformVector
    (UnityEngine.Vector3 System.Single System.Single System.Single)
    (UnityEngine.Vector3 UnityEngine.Vector3))
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    UnityEngine.Transform
    position
    UnityEngine.Vector3)
  (define-field-port
    local-position-get
    local-position-set!
    local-position-update!
    (property:)
    UnityEngine.Transform
    localPosition
    UnityEngine.Vector3)
  (define-field-port
    euler-angles-get
    euler-angles-set!
    euler-angles-update!
    (property:)
    UnityEngine.Transform
    eulerAngles
    UnityEngine.Vector3)
  (define-field-port
    local-euler-angles-get
    local-euler-angles-set!
    local-euler-angles-update!
    (property:)
    UnityEngine.Transform
    localEulerAngles
    UnityEngine.Vector3)
  (define-field-port
    right-get
    right-set!
    right-update!
    (property:)
    UnityEngine.Transform
    right
    UnityEngine.Vector3)
  (define-field-port
    up-get
    up-set!
    up-update!
    (property:)
    UnityEngine.Transform
    up
    UnityEngine.Vector3)
  (define-field-port
    forward-get
    forward-set!
    forward-update!
    (property:)
    UnityEngine.Transform
    forward
    UnityEngine.Vector3)
  (define-field-port
    rotation-get
    rotation-set!
    rotation-update!
    (property:)
    UnityEngine.Transform
    rotation
    UnityEngine.Quaternion)
  (define-field-port
    local-rotation-get
    local-rotation-set!
    local-rotation-update!
    (property:)
    UnityEngine.Transform
    localRotation
    UnityEngine.Quaternion)
  (define-field-port
    local-scale-get
    local-scale-set!
    local-scale-update!
    (property:)
    UnityEngine.Transform
    localScale
    UnityEngine.Vector3)
  (define-field-port
    parent-get
    parent-set!
    parent-update!
    (property:)
    UnityEngine.Transform
    parent
    UnityEngine.Transform)
  (define-field-port
    world-to-local-matrix
    #f
    #f
    (property:)
    UnityEngine.Transform
    worldToLocalMatrix
    UnityEngine.Matrix4x4)
  (define-field-port
    local-to-world-matrix
    #f
    #f
    (property:)
    UnityEngine.Transform
    localToWorldMatrix
    UnityEngine.Matrix4x4)
  (define-field-port
    root
    #f
    #f
    (property:)
    UnityEngine.Transform
    root
    UnityEngine.Transform)
  (define-field-port
    child-count
    #f
    #f
    (property:)
    UnityEngine.Transform
    childCount
    System.Int32)
  (define-field-port
    lossy-scale
    #f
    #f
    (property:)
    UnityEngine.Transform
    lossyScale
    UnityEngine.Vector3)
  (define-field-port
    has-changed?-get
    has-changed?-set!
    has-changed?-update!
    (property:)
    UnityEngine.Transform
    hasChanged
    System.Boolean))

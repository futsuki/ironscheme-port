(library (unity-engine object)
  (export new
          is?
          object?
          destroy
          find-objects-of-type
          dont-destroy-on-load
          find-objects-of-type-including-assets
          equals?
          destroy-immediate
          find-object-of-type
          instantiate
          get-hash-code
          find-scene-objects-of-type
          destroy-object
          get-instance-id
          find-objects-of-type-all
          to-string
          name-get
          name-set!
          name-update!
          hide-flags-get
          hide-flags-set!
          hide-flags-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Object a ...)))))
  (define (is? a) (clr-is UnityEngine.Object a))
  (define (object? a) (clr-is UnityEngine.Object a))
  (define-method-port
    destroy
    UnityEngine.Object
    Destroy
    (static: System.Void UnityEngine.Object)
    (static: System.Void UnityEngine.Object System.Single))
  (define-method-port
    find-objects-of-type
    UnityEngine.Object
    FindObjectsOfType
    (static: UnityEngine.Object[] System.Type))
  (define-method-port
    dont-destroy-on-load
    UnityEngine.Object
    DontDestroyOnLoad
    (static: System.Void UnityEngine.Object))
  (define-method-port
    find-objects-of-type-including-assets
    UnityEngine.Object
    FindObjectsOfTypeIncludingAssets
    (static: UnityEngine.Object[] System.Type))
  (define-method-port
    equals?
    UnityEngine.Object
    Equals
    (System.Boolean System.Object))
  (define-method-port
    destroy-immediate
    UnityEngine.Object
    DestroyImmediate
    (static: System.Void UnityEngine.Object)
    (static: System.Void UnityEngine.Object System.Boolean))
  (define-method-port
    find-object-of-type
    UnityEngine.Object
    FindObjectOfType
    (static: UnityEngine.Object System.Type))
  (define-method-port
    instantiate
    UnityEngine.Object
    Instantiate
    (static: UnityEngine.Object UnityEngine.Object)
    (static:
      UnityEngine.Object
      UnityEngine.Object
      UnityEngine.Vector3
      UnityEngine.Quaternion))
  (define-method-port
    get-hash-code
    UnityEngine.Object
    GetHashCode
    (System.Int32))
  (define-method-port
    find-scene-objects-of-type
    UnityEngine.Object
    FindSceneObjectsOfType
    (static: UnityEngine.Object[] System.Type))
  (define-method-port
    destroy-object
    UnityEngine.Object
    DestroyObject
    (static: System.Void UnityEngine.Object)
    (static: System.Void UnityEngine.Object System.Single))
  (define-method-port
    get-instance-id
    UnityEngine.Object
    GetInstanceID
    (System.Int32))
  (define-method-port
    find-objects-of-type-all
    UnityEngine.Object
    FindObjectsOfTypeAll
    (static: UnityEngine.Object[] System.Type))
  (define-method-port
    to-string
    UnityEngine.Object
    ToString
    (System.String))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    UnityEngine.Object
    name
    System.String)
  (define-field-port
    hide-flags-get
    hide-flags-set!
    hide-flags-update!
    (property:)
    UnityEngine.Object
    hideFlags
    UnityEngine.HideFlags))

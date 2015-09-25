(library (unity-engine animator-controller-parameter)
  (export new
          is?
          animator-controller-parameter?
          get-hash-code
          equals?
          name-get
          name-set!
          name-update!
          name-hash
          type-get
          type-set!
          type-update!
          default-float-get
          default-float-set!
          default-float-update!
          default-int-get
          default-int-set!
          default-int-update!
          default-bool?-get
          default-bool?-set!
          default-bool?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.AnimatorControllerParameter a ...)))))
  (define (is? a) (clr-is UnityEngine.AnimatorControllerParameter a))
  (define (animator-controller-parameter? a)
    (clr-is UnityEngine.AnimatorControllerParameter a))
  (define-method-port
    get-hash-code
    UnityEngine.AnimatorControllerParameter
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    UnityEngine.AnimatorControllerParameter
    Equals
    (System.Boolean System.Object))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    UnityEngine.AnimatorControllerParameter
    name
    System.String)
  (define-field-port
    name-hash
    #f
    #f
    (property:)
    UnityEngine.AnimatorControllerParameter
    nameHash
    System.Int32)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    UnityEngine.AnimatorControllerParameter
    type
    UnityEngine.AnimatorControllerParameterType)
  (define-field-port
    default-float-get
    default-float-set!
    default-float-update!
    (property:)
    UnityEngine.AnimatorControllerParameter
    defaultFloat
    System.Single)
  (define-field-port
    default-int-get
    default-int-set!
    default-int-update!
    (property:)
    UnityEngine.AnimatorControllerParameter
    defaultInt
    System.Int32)
  (define-field-port
    default-bool?-get
    default-bool?-set!
    default-bool?-update!
    (property:)
    UnityEngine.AnimatorControllerParameter
    defaultBool
    System.Boolean))

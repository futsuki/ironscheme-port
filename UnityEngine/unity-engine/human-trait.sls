(library (unity-engine human-trait)
  (export new
          is?
          human-trait?
          required-bone?
          get-muscle-default-max
          get-muscle-default-min
          muscle-from-bone
          bone-from-muscle
          muscle-count
          muscle-name
          bone-count
          bone-name
          required-bone-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.HumanTrait a ...)))))
  (define (is? a) (clr-is UnityEngine.HumanTrait a))
  (define (human-trait? a) (clr-is UnityEngine.HumanTrait a))
  (define-method-port
    required-bone?
    UnityEngine.HumanTrait
    RequiredBone
    (static: System.Boolean System.Int32))
  (define-method-port
    get-muscle-default-max
    UnityEngine.HumanTrait
    GetMuscleDefaultMax
    (static: System.Single System.Int32))
  (define-method-port
    get-muscle-default-min
    UnityEngine.HumanTrait
    GetMuscleDefaultMin
    (static: System.Single System.Int32))
  (define-method-port
    muscle-from-bone
    UnityEngine.HumanTrait
    MuscleFromBone
    (static: System.Int32 System.Int32 System.Int32))
  (define-method-port
    bone-from-muscle
    UnityEngine.HumanTrait
    BoneFromMuscle
    (static: System.Int32 System.Int32))
  (define-field-port
    muscle-count
    #f
    #f
    (static: property:)
    UnityEngine.HumanTrait
    MuscleCount
    System.Int32)
  (define-field-port
    muscle-name
    #f
    #f
    (static: property:)
    UnityEngine.HumanTrait
    MuscleName
    System.String[])
  (define-field-port
    bone-count
    #f
    #f
    (static: property:)
    UnityEngine.HumanTrait
    BoneCount
    System.Int32)
  (define-field-port
    bone-name
    #f
    #f
    (static: property:)
    UnityEngine.HumanTrait
    BoneName
    System.String[])
  (define-field-port
    required-bone-count
    #f
    #f
    (static: property:)
    UnityEngine.HumanTrait
    RequiredBoneCount
    System.Int32))

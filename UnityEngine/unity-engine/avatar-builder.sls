(library (unity-engine avatar-builder)
  (export new
          is?
          avatar-builder?
          build-generic-avatar
          build-human-avatar)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AvatarBuilder a ...)))))
  (define (is? a) (clr-is UnityEngine.AvatarBuilder a))
  (define (avatar-builder? a) (clr-is UnityEngine.AvatarBuilder a))
  (define-method-port
    build-generic-avatar
    UnityEngine.AvatarBuilder
    BuildGenericAvatar
    (static: UnityEngine.Avatar UnityEngine.GameObject System.String))
  (define-method-port
    build-human-avatar
    UnityEngine.AvatarBuilder
    BuildHumanAvatar
    (static:
      UnityEngine.Avatar
      UnityEngine.GameObject
      UnityEngine.HumanDescription)))

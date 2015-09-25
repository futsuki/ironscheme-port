(library (unity-engine social-platforms impl achievement-description)
  (export new
          is?
          achievement-description?
          set-image
          to-string
          id-get
          id-set!
          id-update!
          title
          image
          achieved-description
          unachieved-description
          hidden?
          points)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.SocialPlatforms.Impl.AchievementDescription
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.SocialPlatforms.Impl.AchievementDescription a))
  (define (achievement-description? a)
    (clr-is UnityEngine.SocialPlatforms.Impl.AchievementDescription a))
  (define-method-port
    set-image
    UnityEngine.SocialPlatforms.Impl.AchievementDescription
    SetImage
    (System.Void UnityEngine.Texture2D))
  (define-method-port
    to-string
    UnityEngine.SocialPlatforms.Impl.AchievementDescription
    ToString
    (System.String))
  (define-field-port
    id-get
    id-set!
    id-update!
    (property:)
    UnityEngine.SocialPlatforms.Impl.AchievementDescription
    id
    System.String)
  (define-field-port
    title
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.AchievementDescription
    title
    System.String)
  (define-field-port
    image
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.AchievementDescription
    image
    UnityEngine.Texture2D)
  (define-field-port
    achieved-description
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.AchievementDescription
    achievedDescription
    System.String)
  (define-field-port
    unachieved-description
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.AchievementDescription
    unachievedDescription
    System.String)
  (define-field-port
    hidden?
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.AchievementDescription
    hidden
    System.Boolean)
  (define-field-port
    points
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.AchievementDescription
    points
    System.Int32))

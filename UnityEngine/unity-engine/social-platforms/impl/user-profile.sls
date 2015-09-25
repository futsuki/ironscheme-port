(library (unity-engine social-platforms impl user-profile)
  (export new
          is?
          user-profile?
          set-user-name
          set-state
          set-is-friend
          set-image
          set-user-id
          to-string
          user-name
          id
          is-friend?
          state
          image)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.SocialPlatforms.Impl.UserProfile
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.SocialPlatforms.Impl.UserProfile a))
  (define (user-profile? a)
    (clr-is UnityEngine.SocialPlatforms.Impl.UserProfile a))
  (define-method-port
    set-user-name
    UnityEngine.SocialPlatforms.Impl.UserProfile
    SetUserName
    (System.Void System.String))
  (define-method-port
    set-state
    UnityEngine.SocialPlatforms.Impl.UserProfile
    SetState
    (System.Void UnityEngine.SocialPlatforms.UserState))
  (define-method-port
    set-is-friend
    UnityEngine.SocialPlatforms.Impl.UserProfile
    SetIsFriend
    (System.Void System.Boolean))
  (define-method-port
    set-image
    UnityEngine.SocialPlatforms.Impl.UserProfile
    SetImage
    (System.Void UnityEngine.Texture2D))
  (define-method-port
    set-user-id
    UnityEngine.SocialPlatforms.Impl.UserProfile
    SetUserID
    (System.Void System.String))
  (define-method-port
    to-string
    UnityEngine.SocialPlatforms.Impl.UserProfile
    ToString
    (System.String))
  (define-field-port
    user-name
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.UserProfile
    userName
    System.String)
  (define-field-port
    id
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.UserProfile
    id
    System.String)
  (define-field-port
    is-friend?
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.UserProfile
    isFriend
    System.Boolean)
  (define-field-port
    state
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.UserProfile
    state
    UnityEngine.SocialPlatforms.UserState)
  (define-field-port
    image
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.UserProfile
    image
    UnityEngine.Texture2D))

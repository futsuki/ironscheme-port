(library (unity-engine social-platforms impl local-user)
  (export new
          is?
          local-user?
          authenticate
          set-authenticated
          set-friends
          set-underage
          load-friends
          friends
          authenticated?
          underage?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.SocialPlatforms.Impl.LocalUser
             a
             ...)))))
  (define (is? a) (clr-is UnityEngine.SocialPlatforms.Impl.LocalUser a))
  (define (local-user? a)
    (clr-is UnityEngine.SocialPlatforms.Impl.LocalUser a))
  (define-method-port
    authenticate
    UnityEngine.SocialPlatforms.Impl.LocalUser
    Authenticate)
  (define-method-port
    set-authenticated
    UnityEngine.SocialPlatforms.Impl.LocalUser
    SetAuthenticated
    (System.Void System.Boolean))
  (define-method-port
    set-friends
    UnityEngine.SocialPlatforms.Impl.LocalUser
    SetFriends
    (System.Void UnityEngine.SocialPlatforms.IUserProfile[]))
  (define-method-port
    set-underage
    UnityEngine.SocialPlatforms.Impl.LocalUser
    SetUnderage
    (System.Void System.Boolean))
  (define-method-port
    load-friends
    UnityEngine.SocialPlatforms.Impl.LocalUser
    LoadFriends)
  (define-field-port
    friends
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.LocalUser
    friends
    UnityEngine.SocialPlatforms.IUserProfile[])
  (define-field-port
    authenticated?
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.LocalUser
    authenticated
    System.Boolean)
  (define-field-port
    underage?
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.LocalUser
    underage
    System.Boolean))

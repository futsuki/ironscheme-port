(library (unity-engine social-platforms impl leaderboard)
  (export new
          is?
          leaderboard?
          set-title
          get-user-filter
          set-max-range
          set-scores
          load-scores
          set-local-user-score
          to-string
          set-user-filter
          loading?
          id-get
          id-set!
          id-update!
          user-scope-get
          user-scope-set!
          user-scope-update!
          range-get
          range-set!
          range-update!
          time-scope-get
          time-scope-set!
          time-scope-update!
          local-user-score
          max-range
          scores
          title)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.SocialPlatforms.Impl.Leaderboard
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.SocialPlatforms.Impl.Leaderboard a))
  (define (leaderboard? a)
    (clr-is UnityEngine.SocialPlatforms.Impl.Leaderboard a))
  (define-method-port
    set-title
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    SetTitle
    (System.Void System.String))
  (define-method-port
    get-user-filter
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    GetUserFilter
    (System.String[]))
  (define-method-port
    set-max-range
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    SetMaxRange
    (System.Void System.UInt32))
  (define-method-port
    set-scores
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    SetScores
    (System.Void UnityEngine.SocialPlatforms.IScore[]))
  (define-method-port
    load-scores
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    LoadScores)
  (define-method-port
    set-local-user-score
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    SetLocalUserScore
    (System.Void UnityEngine.SocialPlatforms.IScore))
  (define-method-port
    to-string
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    ToString
    (System.String))
  (define-method-port
    set-user-filter
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    SetUserFilter
    (System.Void System.String[]))
  (define-field-port
    loading?
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    loading
    System.Boolean)
  (define-field-port
    id-get
    id-set!
    id-update!
    (property:)
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    id
    System.String)
  (define-field-port
    user-scope-get
    user-scope-set!
    user-scope-update!
    (property:)
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    userScope
    UnityEngine.SocialPlatforms.UserScope)
  (define-field-port
    range-get
    range-set!
    range-update!
    (property:)
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    range
    UnityEngine.SocialPlatforms.Range)
  (define-field-port
    time-scope-get
    time-scope-set!
    time-scope-update!
    (property:)
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    timeScope
    UnityEngine.SocialPlatforms.TimeScope)
  (define-field-port
    local-user-score
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    localUserScore
    UnityEngine.SocialPlatforms.IScore)
  (define-field-port
    max-range
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    maxRange
    System.UInt32)
  (define-field-port
    scores
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    scores
    UnityEngine.SocialPlatforms.IScore[])
  (define-field-port
    title
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Leaderboard
    title
    System.String))

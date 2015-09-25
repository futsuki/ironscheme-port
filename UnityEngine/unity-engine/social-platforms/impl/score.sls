(library (unity-engine social-platforms impl score)
  (export new
          is?
          score?
          set-rank
          report-score
          set-date
          set-formatted-value
          set-user-id
          to-string
          leaderboard-id-get
          leaderboard-id-set!
          leaderboard-id-update!
          value-get
          value-set!
          value-update!
          date
          formatted-value
          user-id
          rank)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.SocialPlatforms.Impl.Score a ...)))))
  (define (is? a) (clr-is UnityEngine.SocialPlatforms.Impl.Score a))
  (define (score? a) (clr-is UnityEngine.SocialPlatforms.Impl.Score a))
  (define-method-port
    set-rank
    UnityEngine.SocialPlatforms.Impl.Score
    SetRank
    (System.Void System.Int32))
  (define-method-port
    report-score
    UnityEngine.SocialPlatforms.Impl.Score
    ReportScore)
  (define-method-port
    set-date
    UnityEngine.SocialPlatforms.Impl.Score
    SetDate
    (System.Void System.DateTime))
  (define-method-port
    set-formatted-value
    UnityEngine.SocialPlatforms.Impl.Score
    SetFormattedValue
    (System.Void System.String))
  (define-method-port
    set-user-id
    UnityEngine.SocialPlatforms.Impl.Score
    SetUserID
    (System.Void System.String))
  (define-method-port
    to-string
    UnityEngine.SocialPlatforms.Impl.Score
    ToString
    (System.String))
  (define-field-port
    leaderboard-id-get
    leaderboard-id-set!
    leaderboard-id-update!
    (property:)
    UnityEngine.SocialPlatforms.Impl.Score
    leaderboardID
    System.String)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    UnityEngine.SocialPlatforms.Impl.Score
    value
    System.Int64)
  (define-field-port
    date
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Score
    date
    System.DateTime)
  (define-field-port
    formatted-value
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Score
    formattedValue
    System.String)
  (define-field-port
    user-id
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Score
    userID
    System.String)
  (define-field-port
    rank
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Score
    rank
    System.Int32))

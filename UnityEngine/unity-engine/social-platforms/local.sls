(library (unity-engine social-platforms local)
  (export new
          is?
          local?
          load-users
          report-progress
          report-score
          load-scores
          create-achievement
          show-achievements-ui
          load-achievement-descriptions
          show-leaderboard-ui
          load-achievements
          create-leaderboard
          local-user)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.SocialPlatforms.Local a ...)))))
  (define (is? a) (clr-is UnityEngine.SocialPlatforms.Local a))
  (define (local? a) (clr-is UnityEngine.SocialPlatforms.Local a))
  (define-method-port
    load-users
    UnityEngine.SocialPlatforms.Local
    LoadUsers)
  (define-method-port
    report-progress
    UnityEngine.SocialPlatforms.Local
    ReportProgress)
  (define-method-port
    report-score
    UnityEngine.SocialPlatforms.Local
    ReportScore)
  (define-method-port
    load-scores
    UnityEngine.SocialPlatforms.Local
    LoadScores)
  (define-method-port
    create-achievement
    UnityEngine.SocialPlatforms.Local
    CreateAchievement
    (UnityEngine.SocialPlatforms.IAchievement))
  (define-method-port
    show-achievements-ui
    UnityEngine.SocialPlatforms.Local
    ShowAchievementsUI
    (System.Void))
  (define-method-port
    load-achievement-descriptions
    UnityEngine.SocialPlatforms.Local
    LoadAchievementDescriptions)
  (define-method-port
    show-leaderboard-ui
    UnityEngine.SocialPlatforms.Local
    ShowLeaderboardUI
    (System.Void))
  (define-method-port
    load-achievements
    UnityEngine.SocialPlatforms.Local
    LoadAchievements)
  (define-method-port
    create-leaderboard
    UnityEngine.SocialPlatforms.Local
    CreateLeaderboard
    (UnityEngine.SocialPlatforms.ILeaderboard))
  (define-field-port
    local-user
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Local
    localUser
    UnityEngine.SocialPlatforms.ILocalUser))

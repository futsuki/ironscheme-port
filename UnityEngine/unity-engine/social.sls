(library (unity-engine social)
  (export is?
          social?
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
          active-get
          active-set!
          active-update!
          local-user)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Social a))
  (define (social? a) (clr-is UnityEngine.Social a))
  (define-method-port load-users UnityEngine.Social LoadUsers)
  (define-method-port report-progress UnityEngine.Social ReportProgress)
  (define-method-port report-score UnityEngine.Social ReportScore)
  (define-method-port load-scores UnityEngine.Social LoadScores)
  (define-method-port
    create-achievement
    UnityEngine.Social
    CreateAchievement
    (static: UnityEngine.SocialPlatforms.IAchievement))
  (define-method-port
    show-achievements-ui
    UnityEngine.Social
    ShowAchievementsUI
    (static: System.Void))
  (define-method-port
    load-achievement-descriptions
    UnityEngine.Social
    LoadAchievementDescriptions)
  (define-method-port
    show-leaderboard-ui
    UnityEngine.Social
    ShowLeaderboardUI
    (static: System.Void))
  (define-method-port
    load-achievements
    UnityEngine.Social
    LoadAchievements)
  (define-method-port
    create-leaderboard
    UnityEngine.Social
    CreateLeaderboard
    (static: UnityEngine.SocialPlatforms.ILeaderboard))
  (define-field-port
    active-get
    active-set!
    active-update!
    (static: property:)
    UnityEngine.Social
    Active
    UnityEngine.SocialPlatforms.ISocialPlatform)
  (define-field-port
    local-user
    #f
    #f
    (static: property:)
    UnityEngine.Social
    localUser
    UnityEngine.SocialPlatforms.ILocalUser))

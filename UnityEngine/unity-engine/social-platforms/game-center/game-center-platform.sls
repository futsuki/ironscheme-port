(library (unity-engine
          social-platforms
          game-center
          game-center-platform)
  (export new
          is?
          game-center-platform?
          show-default-achievement-completion-banner
          reset-all-achievements
          show-leaderboard-ui)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform
             a
             ...)))))
  (define (is? a)
    (clr-is
      UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform
      a))
  (define (game-center-platform? a)
    (clr-is
      UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform
      a))
  (define-method-port
    show-default-achievement-completion-banner
    UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform
    ShowDefaultAchievementCompletionBanner
    (static: System.Void System.Boolean))
  (define-method-port
    reset-all-achievements
    UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform
    ResetAllAchievements)
  (define-method-port
    show-leaderboard-ui
    UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform
    ShowLeaderboardUI
    (static:
      System.Void
      System.String
      UnityEngine.SocialPlatforms.TimeScope)))

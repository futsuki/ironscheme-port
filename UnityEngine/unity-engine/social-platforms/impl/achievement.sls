(library (unity-engine social-platforms impl achievement)
  (export new
          is?
          achievement?
          report-progress
          set-hidden
          set-last-reported-date
          set-completed
          to-string
          id-get
          id-set!
          id-update!
          percent-completed-get
          percent-completed-set!
          percent-completed-update!
          completed?
          hidden?
          last-reported-date)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.SocialPlatforms.Impl.Achievement
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.SocialPlatforms.Impl.Achievement a))
  (define (achievement? a)
    (clr-is UnityEngine.SocialPlatforms.Impl.Achievement a))
  (define-method-port
    report-progress
    UnityEngine.SocialPlatforms.Impl.Achievement
    ReportProgress)
  (define-method-port
    set-hidden
    UnityEngine.SocialPlatforms.Impl.Achievement
    SetHidden
    (System.Void System.Boolean))
  (define-method-port
    set-last-reported-date
    UnityEngine.SocialPlatforms.Impl.Achievement
    SetLastReportedDate
    (System.Void System.DateTime))
  (define-method-port
    set-completed
    UnityEngine.SocialPlatforms.Impl.Achievement
    SetCompleted
    (System.Void System.Boolean))
  (define-method-port
    to-string
    UnityEngine.SocialPlatforms.Impl.Achievement
    ToString
    (System.String))
  (define-field-port
    id-get
    id-set!
    id-update!
    (property:)
    UnityEngine.SocialPlatforms.Impl.Achievement
    id
    System.String)
  (define-field-port
    percent-completed-get
    percent-completed-set!
    percent-completed-update!
    (property:)
    UnityEngine.SocialPlatforms.Impl.Achievement
    percentCompleted
    System.Double)
  (define-field-port
    completed?
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Achievement
    completed
    System.Boolean)
  (define-field-port
    hidden?
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Achievement
    hidden
    System.Boolean)
  (define-field-port
    last-reported-date
    #f
    #f
    (property:)
    UnityEngine.SocialPlatforms.Impl.Achievement
    lastReportedDate
    System.DateTime))

(library (unity-engine i-os local-notification)
  (export new
          is?
          local-notification?
          fire-date-get
          fire-date-set!
          fire-date-update!
          time-zone-get
          time-zone-set!
          time-zone-update!
          repeat-interval-get
          repeat-interval-set!
          repeat-interval-update!
          repeat-calendar-get
          repeat-calendar-set!
          repeat-calendar-update!
          alert-body-get
          alert-body-set!
          alert-body-update!
          alert-action-get
          alert-action-set!
          alert-action-update!
          has-action?-get
          has-action?-set!
          has-action?-update!
          alert-launch-image-get
          alert-launch-image-set!
          alert-launch-image-update!
          application-icon-badge-number-get
          application-icon-badge-number-set!
          application-icon-badge-number-update!
          sound-name-get
          sound-name-set!
          sound-name-update!
          default-sound-name
          user-info-get
          user-info-set!
          user-info-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.iOS.LocalNotification a ...)))))
  (define (is? a) (clr-is UnityEngine.iOS.LocalNotification a))
  (define (local-notification? a)
    (clr-is UnityEngine.iOS.LocalNotification a))
  (define-field-port
    fire-date-get
    fire-date-set!
    fire-date-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    fireDate
    System.DateTime)
  (define-field-port
    time-zone-get
    time-zone-set!
    time-zone-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    timeZone
    System.String)
  (define-field-port
    repeat-interval-get
    repeat-interval-set!
    repeat-interval-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    repeatInterval
    UnityEngine.iOS.CalendarUnit)
  (define-field-port
    repeat-calendar-get
    repeat-calendar-set!
    repeat-calendar-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    repeatCalendar
    UnityEngine.iOS.CalendarIdentifier)
  (define-field-port
    alert-body-get
    alert-body-set!
    alert-body-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    alertBody
    System.String)
  (define-field-port
    alert-action-get
    alert-action-set!
    alert-action-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    alertAction
    System.String)
  (define-field-port
    has-action?-get
    has-action?-set!
    has-action?-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    hasAction
    System.Boolean)
  (define-field-port
    alert-launch-image-get
    alert-launch-image-set!
    alert-launch-image-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    alertLaunchImage
    System.String)
  (define-field-port
    application-icon-badge-number-get
    application-icon-badge-number-set!
    application-icon-badge-number-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    applicationIconBadgeNumber
    System.Int32)
  (define-field-port
    sound-name-get
    sound-name-set!
    sound-name-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    soundName
    System.String)
  (define-field-port
    default-sound-name
    #f
    #f
    (static: property:)
    UnityEngine.iOS.LocalNotification
    defaultSoundName
    System.String)
  (define-field-port
    user-info-get
    user-info-set!
    user-info-update!
    (property:)
    UnityEngine.iOS.LocalNotification
    userInfo
    System.Collections.IDictionary))

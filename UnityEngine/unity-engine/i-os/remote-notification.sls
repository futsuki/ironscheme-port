(library (unity-engine i-os remote-notification)
  (export is?
          remote-notification?
          alert-body
          has-action?
          application-icon-badge-number
          sound-name
          user-info)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.iOS.RemoteNotification a))
  (define (remote-notification? a)
    (clr-is UnityEngine.iOS.RemoteNotification a))
  (define-field-port
    alert-body
    #f
    #f
    (property:)
    UnityEngine.iOS.RemoteNotification
    alertBody
    System.String)
  (define-field-port
    has-action?
    #f
    #f
    (property:)
    UnityEngine.iOS.RemoteNotification
    hasAction
    System.Boolean)
  (define-field-port
    application-icon-badge-number
    #f
    #f
    (property:)
    UnityEngine.iOS.RemoteNotification
    applicationIconBadgeNumber
    System.Int32)
  (define-field-port
    sound-name
    #f
    #f
    (property:)
    UnityEngine.iOS.RemoteNotification
    soundName
    System.String)
  (define-field-port
    user-info
    #f
    #f
    (property:)
    UnityEngine.iOS.RemoteNotification
    userInfo
    System.Collections.IDictionary))

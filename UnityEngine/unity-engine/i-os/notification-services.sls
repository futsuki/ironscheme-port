(library (unity-engine i-os notification-services)
  (export new
          is?
          notification-services?
          get-remote-notification
          register-for-notifications
          clear-remote-notifications
          get-local-notification
          unregister-for-remote-notifications
          schedule-local-notification
          cancel-all-local-notifications
          present-local-notification-now
          clear-local-notifications
          cancel-local-notification
          local-notification-count
          local-notifications
          scheduled-local-notifications
          remote-notification-count
          remote-notifications
          enabled-notification-types
          device-token
          registration-error)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.iOS.NotificationServices a ...)))))
  (define (is? a) (clr-is UnityEngine.iOS.NotificationServices a))
  (define (notification-services? a)
    (clr-is UnityEngine.iOS.NotificationServices a))
  (define-method-port
    get-remote-notification
    UnityEngine.iOS.NotificationServices
    GetRemoteNotification
    (static: UnityEngine.iOS.RemoteNotification System.Int32))
  (define-method-port
    register-for-notifications
    UnityEngine.iOS.NotificationServices
    RegisterForNotifications
    (static:
      System.Void
      UnityEngine.iOS.NotificationType
      System.Boolean)
    (static: System.Void UnityEngine.iOS.NotificationType))
  (define-method-port
    clear-remote-notifications
    UnityEngine.iOS.NotificationServices
    ClearRemoteNotifications
    (static: System.Void))
  (define-method-port
    get-local-notification
    UnityEngine.iOS.NotificationServices
    GetLocalNotification
    (static: UnityEngine.iOS.LocalNotification System.Int32))
  (define-method-port
    unregister-for-remote-notifications
    UnityEngine.iOS.NotificationServices
    UnregisterForRemoteNotifications
    (static: System.Void))
  (define-method-port
    schedule-local-notification
    UnityEngine.iOS.NotificationServices
    ScheduleLocalNotification
    (static: System.Void UnityEngine.iOS.LocalNotification))
  (define-method-port
    cancel-all-local-notifications
    UnityEngine.iOS.NotificationServices
    CancelAllLocalNotifications
    (static: System.Void))
  (define-method-port
    present-local-notification-now
    UnityEngine.iOS.NotificationServices
    PresentLocalNotificationNow
    (static: System.Void UnityEngine.iOS.LocalNotification))
  (define-method-port
    clear-local-notifications
    UnityEngine.iOS.NotificationServices
    ClearLocalNotifications
    (static: System.Void))
  (define-method-port
    cancel-local-notification
    UnityEngine.iOS.NotificationServices
    CancelLocalNotification
    (static: System.Void UnityEngine.iOS.LocalNotification))
  (define-field-port
    local-notification-count
    #f
    #f
    (static: property:)
    UnityEngine.iOS.NotificationServices
    localNotificationCount
    System.Int32)
  (define-field-port
    local-notifications
    #f
    #f
    (static: property:)
    UnityEngine.iOS.NotificationServices
    localNotifications
    UnityEngine.iOS.LocalNotification[])
  (define-field-port
    scheduled-local-notifications
    #f
    #f
    (static: property:)
    UnityEngine.iOS.NotificationServices
    scheduledLocalNotifications
    UnityEngine.iOS.LocalNotification[])
  (define-field-port
    remote-notification-count
    #f
    #f
    (static: property:)
    UnityEngine.iOS.NotificationServices
    remoteNotificationCount
    System.Int32)
  (define-field-port
    remote-notifications
    #f
    #f
    (static: property:)
    UnityEngine.iOS.NotificationServices
    remoteNotifications
    UnityEngine.iOS.RemoteNotification[])
  (define-field-port
    enabled-notification-types
    #f
    #f
    (static: property:)
    UnityEngine.iOS.NotificationServices
    enabledNotificationTypes
    UnityEngine.iOS.NotificationType)
  (define-field-port
    device-token
    #f
    #f
    (static: property:)
    UnityEngine.iOS.NotificationServices
    deviceToken
    System.Byte[])
  (define-field-port
    registration-error
    #f
    #f
    (static: property:)
    UnityEngine.iOS.NotificationServices
    registrationError
    System.String))

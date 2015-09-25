(library (unity-engine notification-services)
  (export new
          is?
          notification-services?
          register-for-remote-notification-types)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.NotificationServices a ...)))))
  (define (is? a) (clr-is UnityEngine.NotificationServices a))
  (define (notification-services? a)
    (clr-is UnityEngine.NotificationServices a))
  (define-method-port
    register-for-remote-notification-types
    UnityEngine.NotificationServices
    RegisterForRemoteNotificationTypes
    (static: System.Void UnityEngine.RemoteNotificationType)))

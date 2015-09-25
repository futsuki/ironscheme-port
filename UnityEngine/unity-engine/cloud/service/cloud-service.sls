(library (unity-engine cloud service cloud-service)
  (export is?
          cloud-service?
          pause-event-dispatcher?
          restore-file
          queue-event?
          save-file?
          initialize?
          start-event-handler?
          stop-event-handler?
          get-analytics-cloud-service
          start-event-dispatcher?
          stop-event-dispatcher?
          pause-event-handler?
          save-file-from-server?
          close?
          service-folder-name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Cloud.Service.CloudService a))
  (define (cloud-service? a)
    (clr-is UnityEngine.Cloud.Service.CloudService a))
  (define-method-port
    pause-event-dispatcher?
    UnityEngine.Cloud.Service.CloudService
    PauseEventDispatcher
    (System.Boolean))
  (define-method-port
    restore-file
    UnityEngine.Cloud.Service.CloudService
    RestoreFile
    (System.String System.String))
  (define-method-port
    queue-event?
    UnityEngine.Cloud.Service.CloudService
    QueueEvent
    (System.Boolean
      System.String
      UnityEngine.Cloud.Service.CloudEventFlags))
  (define-method-port
    save-file?
    UnityEngine.Cloud.Service.CloudService
    SaveFile
    (System.Boolean System.String System.String))
  (define-method-port
    initialize?
    UnityEngine.Cloud.Service.CloudService
    Initialize
    (System.Boolean System.String))
  (define-method-port
    start-event-handler?
    UnityEngine.Cloud.Service.CloudService
    StartEventHandler
    (System.Boolean System.String System.Int32 System.Int32))
  (define-method-port
    stop-event-handler?
    UnityEngine.Cloud.Service.CloudService
    StopEventHandler
    (System.Boolean))
  (define-method-port
    get-analytics-cloud-service
    UnityEngine.Cloud.Service.CloudService
    GetAnalyticsCloudService
    (static: UnityEngine.Cloud.Service.CloudService))
  (define-method-port
    start-event-dispatcher?
    UnityEngine.Cloud.Service.CloudService
    StartEventDispatcher)
  (define-method-port
    stop-event-dispatcher?
    UnityEngine.Cloud.Service.CloudService
    StopEventDispatcher
    (System.Boolean))
  (define-method-port
    pause-event-handler?
    UnityEngine.Cloud.Service.CloudService
    PauseEventHandler
    (System.Boolean System.Boolean))
  (define-method-port
    save-file-from-server?
    UnityEngine.Cloud.Service.CloudService
    SaveFileFromServer)
  (define-method-port
    close?
    UnityEngine.Cloud.Service.CloudService
    Close
    (System.Boolean))
  (define-field-port
    service-folder-name
    #f
    #f
    (property:)
    UnityEngine.Cloud.Service.CloudService
    serviceFolderName
    System.String))

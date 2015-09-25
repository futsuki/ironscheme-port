(library (unity-engine cloud service cloud-service-config)
  (export new
          is?
          cloud-service-config?
          max-number-of-event-in-group-get
          max-number-of-event-in-group-set!
          max-number-of-event-in-group-update!
          session-header-name-get
          session-header-name-set!
          session-header-name-update!
          events-header-name-get
          events-header-name-set!
          events-header-name-update!
          events-end-point-get
          events-end-point-set!
          events-end-point-update!
          network-failure-retry-timeout-in-sec-get
          network-failure-retry-timeout-in-sec-set!
          network-failure-retry-timeout-in-sec-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Cloud.Service.CloudServiceConfig
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Cloud.Service.CloudServiceConfig a))
  (define (cloud-service-config? a)
    (clr-is UnityEngine.Cloud.Service.CloudServiceConfig a))
  (define-field-port
    max-number-of-event-in-group-get
    max-number-of-event-in-group-set!
    max-number-of-event-in-group-update!
    (property:)
    UnityEngine.Cloud.Service.CloudServiceConfig
    maxNumberOfEventInGroup
    System.Int32)
  (define-field-port
    session-header-name-get
    session-header-name-set!
    session-header-name-update!
    (property:)
    UnityEngine.Cloud.Service.CloudServiceConfig
    sessionHeaderName
    System.String)
  (define-field-port
    events-header-name-get
    events-header-name-set!
    events-header-name-update!
    (property:)
    UnityEngine.Cloud.Service.CloudServiceConfig
    eventsHeaderName
    System.String)
  (define-field-port
    events-end-point-get
    events-end-point-set!
    events-end-point-update!
    (property:)
    UnityEngine.Cloud.Service.CloudServiceConfig
    eventsEndPoint
    System.String)
  (define-field-port
    network-failure-retry-timeout-in-sec-get
    network-failure-retry-timeout-in-sec-set!
    network-failure-retry-timeout-in-sec-update!
    (property:)
    UnityEngine.Cloud.Service.CloudServiceConfig
    networkFailureRetryTimeoutInSec
    System.Int32[]))

(library (system enterprise-services event-class-attribute)
  (export new
          is?
          event-class-attribute?
          allow-inproc-subscribers?-get
          allow-inproc-subscribers?-set!
          allow-inproc-subscribers?-update!
          fire-in-parallel?-get
          fire-in-parallel?-set!
          fire-in-parallel?-update!
          publisher-filter-get
          publisher-filter-set!
          publisher-filter-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.EventClassAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.EventClassAttribute a))
  (define (event-class-attribute? a)
    (clr-is System.EnterpriseServices.EventClassAttribute a))
  (define-field-port
    allow-inproc-subscribers?-get
    allow-inproc-subscribers?-set!
    allow-inproc-subscribers?-update!
    (property:)
    System.EnterpriseServices.EventClassAttribute
    AllowInprocSubscribers
    System.Boolean)
  (define-field-port
    fire-in-parallel?-get
    fire-in-parallel?-set!
    fire-in-parallel?-update!
    (property:)
    System.EnterpriseServices.EventClassAttribute
    FireInParallel
    System.Boolean)
  (define-field-port
    publisher-filter-get
    publisher-filter-set!
    publisher-filter-update!
    (property:)
    System.EnterpriseServices.EventClassAttribute
    PublisherFilter
    System.String))

(library (system enterprise-services object-pooling-attribute)
  (export new
          is?
          object-pooling-attribute?
          is-valid-target?
          after-save-changes?
          apply?
          creation-timeout-get
          creation-timeout-set!
          creation-timeout-update!
          enabled?-get
          enabled?-set!
          enabled?-update!
          max-pool-size-get
          max-pool-size-set!
          max-pool-size-update!
          min-pool-size-get
          min-pool-size-set!
          min-pool-size-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ObjectPoolingAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.ObjectPoolingAttribute a))
  (define (object-pooling-attribute? a)
    (clr-is System.EnterpriseServices.ObjectPoolingAttribute a))
  (define-method-port
    is-valid-target?
    System.EnterpriseServices.ObjectPoolingAttribute
    IsValidTarget
    (System.Boolean System.String))
  (define-method-port
    after-save-changes?
    System.EnterpriseServices.ObjectPoolingAttribute
    AfterSaveChanges
    (System.Boolean System.Collections.Hashtable))
  (define-method-port
    apply?
    System.EnterpriseServices.ObjectPoolingAttribute
    Apply
    (System.Boolean System.Collections.Hashtable))
  (define-field-port
    creation-timeout-get
    creation-timeout-set!
    creation-timeout-update!
    (property:)
    System.EnterpriseServices.ObjectPoolingAttribute
    CreationTimeout
    System.Int32)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.EnterpriseServices.ObjectPoolingAttribute
    Enabled
    System.Boolean)
  (define-field-port
    max-pool-size-get
    max-pool-size-set!
    max-pool-size-update!
    (property:)
    System.EnterpriseServices.ObjectPoolingAttribute
    MaxPoolSize
    System.Int32)
  (define-field-port
    min-pool-size-get
    min-pool-size-set!
    min-pool-size-update!
    (property:)
    System.EnterpriseServices.ObjectPoolingAttribute
    MinPoolSize
    System.Int32))

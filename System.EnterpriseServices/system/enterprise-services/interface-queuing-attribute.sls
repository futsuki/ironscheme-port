(library (system enterprise-services interface-queuing-attribute)
  (export new
          is?
          interface-queuing-attribute?
          enabled?-get
          enabled?-set!
          enabled?-update!
          interface-get
          interface-set!
          interface-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.InterfaceQueuingAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.InterfaceQueuingAttribute a))
  (define (interface-queuing-attribute? a)
    (clr-is System.EnterpriseServices.InterfaceQueuingAttribute a))
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.EnterpriseServices.InterfaceQueuingAttribute
    Enabled
    System.Boolean)
  (define-field-port
    interface-get
    interface-set!
    interface-update!
    (property:)
    System.EnterpriseServices.InterfaceQueuingAttribute
    Interface
    System.String))

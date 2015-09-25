(library (system enterprise-services shared-property-group-manager)
  (export new
          is?
          shared-property-group-manager?
          group
          get-enumerator
          create-property-group)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.SharedPropertyGroupManager
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.SharedPropertyGroupManager a))
  (define (shared-property-group-manager? a)
    (clr-is System.EnterpriseServices.SharedPropertyGroupManager a))
  (define-method-port
    group
    System.EnterpriseServices.SharedPropertyGroupManager
    Group
    (System.EnterpriseServices.SharedPropertyGroup System.String))
  (define-method-port
    get-enumerator
    System.EnterpriseServices.SharedPropertyGroupManager
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    create-property-group
    System.EnterpriseServices.SharedPropertyGroupManager
    CreatePropertyGroup
    (System.EnterpriseServices.SharedPropertyGroup
      System.String
      System.EnterpriseServices.PropertyLockMode&
      System.EnterpriseServices.PropertyReleaseMode&
      System.Boolean&)))

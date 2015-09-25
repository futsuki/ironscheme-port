(library (system enterprise-services shared-property-group)
  (export is?
          shared-property-group?
          property
          property-by-position
          create-property-by-position
          create-property)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.EnterpriseServices.SharedPropertyGroup a))
  (define (shared-property-group? a)
    (clr-is System.EnterpriseServices.SharedPropertyGroup a))
  (define-method-port
    property
    System.EnterpriseServices.SharedPropertyGroup
    Property
    (System.EnterpriseServices.SharedProperty System.String))
  (define-method-port
    property-by-position
    System.EnterpriseServices.SharedPropertyGroup
    PropertyByPosition
    (System.EnterpriseServices.SharedProperty System.Int32))
  (define-method-port
    create-property-by-position
    System.EnterpriseServices.SharedPropertyGroup
    CreatePropertyByPosition
    (System.EnterpriseServices.SharedProperty
      System.Int32
      System.Boolean&))
  (define-method-port
    create-property
    System.EnterpriseServices.SharedPropertyGroup
    CreateProperty
    (System.EnterpriseServices.SharedProperty
      System.String
      System.Boolean&)))

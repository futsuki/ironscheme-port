(library (system
          data
          common
          db-provider-specific-type-property-attribute)
  (export new
          is?
          db-provider-specific-type-property-attribute?
          is-provider-specific-type-property?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.Common.DbProviderSpecificTypePropertyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Data.Common.DbProviderSpecificTypePropertyAttribute
      a))
  (define (db-provider-specific-type-property-attribute? a)
    (clr-is
      System.Data.Common.DbProviderSpecificTypePropertyAttribute
      a))
  (define-field-port
    is-provider-specific-type-property?
    #f
    #f
    (property:)
    System.Data.Common.DbProviderSpecificTypePropertyAttribute
    IsProviderSpecificTypeProperty
    System.Boolean))

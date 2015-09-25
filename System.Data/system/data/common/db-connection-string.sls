(library (system data common db-connection-string)
  (export new
          is?
          db-connection-string?
          get-object-data
          permission-demand
          behavior
          restrictions)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.DbConnectionString a ...)))))
  (define (is? a) (clr-is System.Data.Common.DbConnectionString a))
  (define (db-connection-string? a)
    (clr-is System.Data.Common.DbConnectionString a))
  (define-method-port
    get-object-data
    System.Data.Common.DbConnectionString
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    permission-demand
    System.Data.Common.DbConnectionString
    PermissionDemand
    (System.Void))
  (define-field-port
    behavior
    #f
    #f
    (property:)
    System.Data.Common.DbConnectionString
    Behavior
    System.Data.KeyRestrictionBehavior)
  (define-field-port
    restrictions
    #f
    #f
    (property:)
    System.Data.Common.DbConnectionString
    Restrictions
    System.String))

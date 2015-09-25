(library (system data common db-connection-options)
  (export new
          is?
          db-connection-options?
          convert-value-to-boolean?
          contains-key?
          convert-value-to-integrated-security?
          remove-key-value-pairs
          convert-value-to-string
          users-connection-string
          convert-value-to-int32
          is-empty?
          item
          keys)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.DbConnectionOptions a ...)))))
  (define (is? a) (clr-is System.Data.Common.DbConnectionOptions a))
  (define (db-connection-options? a)
    (clr-is System.Data.Common.DbConnectionOptions a))
  (define-method-port
    convert-value-to-boolean?
    System.Data.Common.DbConnectionOptions
    ConvertValueToBoolean
    (System.Boolean System.String System.Boolean))
  (define-method-port
    contains-key?
    System.Data.Common.DbConnectionOptions
    ContainsKey
    (System.Boolean System.String))
  (define-method-port
    convert-value-to-integrated-security?
    System.Data.Common.DbConnectionOptions
    ConvertValueToIntegratedSecurity
    (System.Boolean))
  (define-method-port
    remove-key-value-pairs
    System.Data.Common.DbConnectionOptions
    RemoveKeyValuePairs
    (static: System.String System.String System.String[]))
  (define-method-port
    convert-value-to-string
    System.Data.Common.DbConnectionOptions
    ConvertValueToString
    (System.String System.String System.String))
  (define-method-port
    users-connection-string
    System.Data.Common.DbConnectionOptions
    UsersConnectionString
    (System.String System.Boolean))
  (define-method-port
    convert-value-to-int32
    System.Data.Common.DbConnectionOptions
    ConvertValueToInt32
    (System.Int32 System.String System.Int32))
  (define-field-port
    is-empty?
    #f
    #f
    (property:)
    System.Data.Common.DbConnectionOptions
    IsEmpty
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.Common.DbConnectionOptions
    Item
    System.String)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Data.Common.DbConnectionOptions
    Keys
    System.Collections.ICollection))

(library (system data odbc odbc-connection-string-builder)
  (export new
          is?
          odbc-connection-string-builder?
          contains-key?
          remove?
          clear
          try-get-value?
          item-get
          item-set!
          item-update!
          keys
          driver-get
          driver-set!
          driver-update!
          dsn-get
          dsn-set!
          dsn-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.Odbc.OdbcConnectionStringBuilder
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.Odbc.OdbcConnectionStringBuilder a))
  (define (odbc-connection-string-builder? a)
    (clr-is System.Data.Odbc.OdbcConnectionStringBuilder a))
  (define-method-port
    contains-key?
    System.Data.Odbc.OdbcConnectionStringBuilder
    ContainsKey
    (System.Boolean System.String))
  (define-method-port
    remove?
    System.Data.Odbc.OdbcConnectionStringBuilder
    Remove
    (System.Boolean System.String))
  (define-method-port
    clear
    System.Data.Odbc.OdbcConnectionStringBuilder
    Clear
    (System.Void))
  (define-method-port
    try-get-value?
    System.Data.Odbc.OdbcConnectionStringBuilder
    TryGetValue
    (System.Boolean System.String System.Object&))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Odbc.OdbcConnectionStringBuilder
    Item
    System.Object)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcConnectionStringBuilder
    Keys
    System.Collections.ICollection)
  (define-field-port
    driver-get
    driver-set!
    driver-update!
    (property:)
    System.Data.Odbc.OdbcConnectionStringBuilder
    Driver
    System.String)
  (define-field-port
    dsn-get
    dsn-set!
    dsn-update!
    (property:)
    System.Data.Odbc.OdbcConnectionStringBuilder
    Dsn
    System.String))

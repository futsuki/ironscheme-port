(library (system data common db-connection-string-builder)
  (export new
          is?
          db-connection-string-builder?
          contains-key?
          append-key-value-pair
          add
          remove?
          should-serialize?
          equivalent-to?
          clear
          to-string
          try-get-value?
          browsable-connection-string?-get
          browsable-connection-string?-set!
          browsable-connection-string?-update!
          connection-string-get
          connection-string-set!
          connection-string-update!
          count
          is-fixed-size?
          is-read-only?
          item-get
          item-set!
          item-update!
          keys
          values)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.Common.DbConnectionStringBuilder
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.Common.DbConnectionStringBuilder a))
  (define (db-connection-string-builder? a)
    (clr-is System.Data.Common.DbConnectionStringBuilder a))
  (define-method-port
    contains-key?
    System.Data.Common.DbConnectionStringBuilder
    ContainsKey
    (System.Boolean System.String))
  (define-method-port
    append-key-value-pair
    System.Data.Common.DbConnectionStringBuilder
    AppendKeyValuePair
    (static:
      System.Void
      System.Text.StringBuilder
      System.String
      System.String)
    (static:
      System.Void
      System.Text.StringBuilder
      System.String
      System.String
      System.Boolean))
  (define-method-port
    add
    System.Data.Common.DbConnectionStringBuilder
    Add
    (System.Void System.String System.Object))
  (define-method-port
    remove?
    System.Data.Common.DbConnectionStringBuilder
    Remove
    (System.Boolean System.String))
  (define-method-port
    should-serialize?
    System.Data.Common.DbConnectionStringBuilder
    ShouldSerialize
    (System.Boolean System.String))
  (define-method-port
    equivalent-to?
    System.Data.Common.DbConnectionStringBuilder
    EquivalentTo
    (System.Boolean System.Data.Common.DbConnectionStringBuilder))
  (define-method-port
    clear
    System.Data.Common.DbConnectionStringBuilder
    Clear
    (System.Void))
  (define-method-port
    to-string
    System.Data.Common.DbConnectionStringBuilder
    ToString
    (System.String))
  (define-method-port
    try-get-value?
    System.Data.Common.DbConnectionStringBuilder
    TryGetValue
    (System.Boolean System.String System.Object&))
  (define-field-port
    browsable-connection-string?-get
    browsable-connection-string?-set!
    browsable-connection-string?-update!
    (property:)
    System.Data.Common.DbConnectionStringBuilder
    BrowsableConnectionString
    System.Boolean)
  (define-field-port
    connection-string-get
    connection-string-set!
    connection-string-update!
    (property:)
    System.Data.Common.DbConnectionStringBuilder
    ConnectionString
    System.String)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.Common.DbConnectionStringBuilder
    Count
    System.Int32)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Data.Common.DbConnectionStringBuilder
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.Common.DbConnectionStringBuilder
    IsReadOnly
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Common.DbConnectionStringBuilder
    Item
    System.Object)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Data.Common.DbConnectionStringBuilder
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Data.Common.DbConnectionStringBuilder
    Values
    System.Collections.ICollection))

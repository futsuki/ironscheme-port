(library (microsoft
          sql-server
          server
          sql-user-defined-aggregate-attribute)
  (export new
          is?
          sql-user-defined-aggregate-attribute?
          max-byte-size-value
          format
          is-invariant-to-duplicates?-get
          is-invariant-to-duplicates?-set!
          is-invariant-to-duplicates?-update!
          is-invariant-to-nulls?-get
          is-invariant-to-nulls?-set!
          is-invariant-to-nulls?-update!
          is-invariant-to-order?-get
          is-invariant-to-order?-set!
          is-invariant-to-order?-update!
          is-null-if-empty?-get
          is-null-if-empty?-set!
          is-null-if-empty?-update!
          max-byte-size-get
          max-byte-size-set!
          max-byte-size-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.SqlServer.Server.SqlUserDefinedAggregateAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      Microsoft.SqlServer.Server.SqlUserDefinedAggregateAttribute
      a))
  (define (sql-user-defined-aggregate-attribute? a)
    (clr-is
      Microsoft.SqlServer.Server.SqlUserDefinedAggregateAttribute
      a))
  (define-field-port
    max-byte-size-value
    #f
    #f
    (static:)
    Microsoft.SqlServer.Server.SqlUserDefinedAggregateAttribute
    MaxByteSizeValue
    System.Int32)
  (define-field-port
    format
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlUserDefinedAggregateAttribute
    Format
    Microsoft.SqlServer.Server.Format)
  (define-field-port
    is-invariant-to-duplicates?-get
    is-invariant-to-duplicates?-set!
    is-invariant-to-duplicates?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlUserDefinedAggregateAttribute
    IsInvariantToDuplicates
    System.Boolean)
  (define-field-port
    is-invariant-to-nulls?-get
    is-invariant-to-nulls?-set!
    is-invariant-to-nulls?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlUserDefinedAggregateAttribute
    IsInvariantToNulls
    System.Boolean)
  (define-field-port
    is-invariant-to-order?-get
    is-invariant-to-order?-set!
    is-invariant-to-order?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlUserDefinedAggregateAttribute
    IsInvariantToOrder
    System.Boolean)
  (define-field-port
    is-null-if-empty?-get
    is-null-if-empty?-set!
    is-null-if-empty?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlUserDefinedAggregateAttribute
    IsNullIfEmpty
    System.Boolean)
  (define-field-port
    max-byte-size-get
    max-byte-size-set!
    max-byte-size-update!
    (property:)
    Microsoft.SqlServer.Server.SqlUserDefinedAggregateAttribute
    MaxByteSize
    System.Int32))

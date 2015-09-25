(library (microsoft sql-server server sql-facet-attribute)
  (export new
          is?
          sql-facet-attribute?
          is-fixed-length?-get
          is-fixed-length?-set!
          is-fixed-length?-update!
          is-nullable?-get
          is-nullable?-set!
          is-nullable?-update!
          max-size-get
          max-size-set!
          max-size-update!
          precision-get
          precision-set!
          precision-update!
          scale-get
          scale-set!
          scale-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.SqlServer.Server.SqlFacetAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is Microsoft.SqlServer.Server.SqlFacetAttribute a))
  (define (sql-facet-attribute? a)
    (clr-is Microsoft.SqlServer.Server.SqlFacetAttribute a))
  (define-field-port
    is-fixed-length?-get
    is-fixed-length?-set!
    is-fixed-length?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlFacetAttribute
    IsFixedLength
    System.Boolean)
  (define-field-port
    is-nullable?-get
    is-nullable?-set!
    is-nullable?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlFacetAttribute
    IsNullable
    System.Boolean)
  (define-field-port
    max-size-get
    max-size-set!
    max-size-update!
    (property:)
    Microsoft.SqlServer.Server.SqlFacetAttribute
    MaxSize
    System.Int32)
  (define-field-port
    precision-get
    precision-set!
    precision-update!
    (property:)
    Microsoft.SqlServer.Server.SqlFacetAttribute
    Precision
    System.Int32)
  (define-field-port
    scale-get
    scale-set!
    scale-update!
    (property:)
    Microsoft.SqlServer.Server.SqlFacetAttribute
    Scale
    System.Int32))

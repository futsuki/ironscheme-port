(library (microsoft sql-server server sql-user-defined-type-attribute)
  (export new
          is?
          sql-user-defined-type-attribute?
          format
          is-byte-ordered?-get
          is-byte-ordered?-set!
          is-byte-ordered?-update!
          is-fixed-length?-get
          is-fixed-length?-set!
          is-fixed-length?-update!
          max-byte-size-get
          max-byte-size-set!
          max-byte-size-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.SqlServer.Server.SqlUserDefinedTypeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is Microsoft.SqlServer.Server.SqlUserDefinedTypeAttribute a))
  (define (sql-user-defined-type-attribute? a)
    (clr-is Microsoft.SqlServer.Server.SqlUserDefinedTypeAttribute a))
  (define-field-port
    format
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlUserDefinedTypeAttribute
    Format
    Microsoft.SqlServer.Server.Format)
  (define-field-port
    is-byte-ordered?-get
    is-byte-ordered?-set!
    is-byte-ordered?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlUserDefinedTypeAttribute
    IsByteOrdered
    System.Boolean)
  (define-field-port
    is-fixed-length?-get
    is-fixed-length?-set!
    is-fixed-length?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlUserDefinedTypeAttribute
    IsFixedLength
    System.Boolean)
  (define-field-port
    max-byte-size-get
    max-byte-size-set!
    max-byte-size-update!
    (property:)
    Microsoft.SqlServer.Server.SqlUserDefinedTypeAttribute
    MaxByteSize
    System.Int32))

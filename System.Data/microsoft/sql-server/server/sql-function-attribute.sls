(library (microsoft sql-server server sql-function-attribute)
  (export new
          is?
          sql-function-attribute?
          data-access-get
          data-access-set!
          data-access-update!
          is-deterministic?-get
          is-deterministic?-set!
          is-deterministic?-update!
          is-precise?-get
          is-precise?-set!
          is-precise?-update!
          system-data-access-get
          system-data-access-set!
          system-data-access-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.SqlServer.Server.SqlFunctionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is Microsoft.SqlServer.Server.SqlFunctionAttribute a))
  (define (sql-function-attribute? a)
    (clr-is Microsoft.SqlServer.Server.SqlFunctionAttribute a))
  (define-field-port
    data-access-get
    data-access-set!
    data-access-update!
    (property:)
    Microsoft.SqlServer.Server.SqlFunctionAttribute
    DataAccess
    Microsoft.SqlServer.Server.DataAccessKind)
  (define-field-port
    is-deterministic?-get
    is-deterministic?-set!
    is-deterministic?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlFunctionAttribute
    IsDeterministic
    System.Boolean)
  (define-field-port
    is-precise?-get
    is-precise?-set!
    is-precise?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlFunctionAttribute
    IsPrecise
    System.Boolean)
  (define-field-port
    system-data-access-get
    system-data-access-set!
    system-data-access-update!
    (property:)
    Microsoft.SqlServer.Server.SqlFunctionAttribute
    SystemDataAccess
    Microsoft.SqlServer.Server.SystemDataAccessKind))

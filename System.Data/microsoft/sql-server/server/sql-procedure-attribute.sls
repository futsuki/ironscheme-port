(library (microsoft sql-server server sql-procedure-attribute)
  (export new
          is?
          sql-procedure-attribute?
          name-get
          name-set!
          name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.SqlServer.Server.SqlProcedureAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is Microsoft.SqlServer.Server.SqlProcedureAttribute a))
  (define (sql-procedure-attribute? a)
    (clr-is Microsoft.SqlServer.Server.SqlProcedureAttribute a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    Microsoft.SqlServer.Server.SqlProcedureAttribute
    Name
    System.String))

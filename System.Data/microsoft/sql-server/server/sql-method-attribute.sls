(library (microsoft sql-server server sql-method-attribute)
  (export new
          is?
          sql-method-attribute?
          is-mutator?-get
          is-mutator?-set!
          is-mutator?-update!
          on-null-call?-get
          on-null-call?-set!
          on-null-call?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Microsoft.SqlServer.Server.SqlMethodAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is Microsoft.SqlServer.Server.SqlMethodAttribute a))
  (define (sql-method-attribute? a)
    (clr-is Microsoft.SqlServer.Server.SqlMethodAttribute a))
  (define-field-port
    is-mutator?-get
    is-mutator?-set!
    is-mutator?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlMethodAttribute
    IsMutator
    System.Boolean)
  (define-field-port
    on-null-call?-get
    on-null-call?-set!
    on-null-call?-update!
    (property:)
    Microsoft.SqlServer.Server.SqlMethodAttribute
    OnNullCall
    System.Boolean))

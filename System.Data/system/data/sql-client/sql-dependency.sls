(library (system data sql-client sql-dependency)
  (export new
          is?
          sql-dependency?
          stop?
          start?
          add-command-dependency
          id
          has-changes?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SqlDependency a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SqlDependency a))
  (define (sql-dependency? a)
    (clr-is System.Data.SqlClient.SqlDependency a))
  (define-method-port
    stop?
    System.Data.SqlClient.SqlDependency
    Stop
    (static: System.Boolean System.String System.String)
    (static: System.Boolean System.String))
  (define-method-port
    start?
    System.Data.SqlClient.SqlDependency
    Start
    (static: System.Boolean System.String System.String)
    (static: System.Boolean System.String))
  (define-method-port
    add-command-dependency
    System.Data.SqlClient.SqlDependency
    AddCommandDependency
    (System.Void System.Data.SqlClient.SqlCommand))
  (define-field-port
    id
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlDependency
    Id
    System.String)
  (define-field-port
    has-changes?
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlDependency
    HasChanges
    System.Boolean))

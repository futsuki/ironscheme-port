(library (system data db-source-method-info)
  (export new
          is?
          db-source-method-info?
          method-type-get
          method-type-set!
          method-type-update!
          name-get
          name-set!
          name-update!
          modifier-get
          modifier-set!
          modifier-update!
          query-type-get
          query-type-set!
          query-type-update!
          scalar-call-retval-get
          scalar-call-retval-set!
          scalar-call-retval-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.DbSourceMethodInfo a ...)))))
  (define (is? a) (clr-is System.Data.DbSourceMethodInfo a))
  (define (db-source-method-info? a)
    (clr-is System.Data.DbSourceMethodInfo a))
  (define-field-port
    method-type-get
    method-type-set!
    method-type-update!
    ()
    System.Data.DbSourceMethodInfo
    MethodType
    System.Data.GenerateMethodsType)
  (define-field-port
    name-get
    name-set!
    name-update!
    ()
    System.Data.DbSourceMethodInfo
    Name
    System.String)
  (define-field-port
    modifier-get
    modifier-set!
    modifier-update!
    ()
    System.Data.DbSourceMethodInfo
    Modifier
    System.String)
  (define-field-port
    query-type-get
    query-type-set!
    query-type-update!
    ()
    System.Data.DbSourceMethodInfo
    QueryType
    System.String)
  (define-field-port
    scalar-call-retval-get
    scalar-call-retval-set!
    scalar-call-retval-update!
    ()
    System.Data.DbSourceMethodInfo
    ScalarCallRetval
    System.String))

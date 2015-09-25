(library (system data db-command-info)
  (export new
          is?
          db-command-info?
          command-get
          command-set!
          command-update!
          methods-get
          methods-set!
          methods-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.DbCommandInfo a ...)))))
  (define (is? a) (clr-is System.Data.DbCommandInfo a))
  (define (db-command-info? a) (clr-is System.Data.DbCommandInfo a))
  (define-field-port
    command-get
    command-set!
    command-update!
    ()
    System.Data.DbCommandInfo
    Command
    System.Data.Common.DbCommand)
  (define-field-port
    methods-get
    methods-set!
    methods-update!
    ()
    System.Data.DbCommandInfo
    Methods
    System.Data.DbSourceMethodInfo[]))

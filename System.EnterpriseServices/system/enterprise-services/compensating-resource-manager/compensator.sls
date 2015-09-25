(library (system
          enterprise-services
          compensating-resource-manager
          compensator)
  (export new
          is?
          compensator?
          end-commit
          commit-record?
          prepare-record?
          begin-commit
          end-prepare?
          end-abort
          begin-prepare
          abort-record?
          begin-abort
          clerk)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.CompensatingResourceManager.Compensator
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.EnterpriseServices.CompensatingResourceManager.Compensator
      a))
  (define (compensator? a)
    (clr-is
      System.EnterpriseServices.CompensatingResourceManager.Compensator
      a))
  (define-method-port
    end-commit
    System.EnterpriseServices.CompensatingResourceManager.Compensator
    EndCommit
    (System.Void))
  (define-method-port
    commit-record?
    System.EnterpriseServices.CompensatingResourceManager.Compensator
    CommitRecord
    (System.Boolean
      System.EnterpriseServices.CompensatingResourceManager.LogRecord))
  (define-method-port
    prepare-record?
    System.EnterpriseServices.CompensatingResourceManager.Compensator
    PrepareRecord
    (System.Boolean
      System.EnterpriseServices.CompensatingResourceManager.LogRecord))
  (define-method-port
    begin-commit
    System.EnterpriseServices.CompensatingResourceManager.Compensator
    BeginCommit
    (System.Void System.Boolean))
  (define-method-port
    end-prepare?
    System.EnterpriseServices.CompensatingResourceManager.Compensator
    EndPrepare
    (System.Boolean))
  (define-method-port
    end-abort
    System.EnterpriseServices.CompensatingResourceManager.Compensator
    EndAbort
    (System.Void))
  (define-method-port
    begin-prepare
    System.EnterpriseServices.CompensatingResourceManager.Compensator
    BeginPrepare
    (System.Void))
  (define-method-port
    abort-record?
    System.EnterpriseServices.CompensatingResourceManager.Compensator
    AbortRecord
    (System.Boolean
      System.EnterpriseServices.CompensatingResourceManager.LogRecord))
  (define-method-port
    begin-abort
    System.EnterpriseServices.CompensatingResourceManager.Compensator
    BeginAbort
    (System.Void System.Boolean))
  (define-field-port
    clerk
    #f
    #f
    (property:)
    System.EnterpriseServices.CompensatingResourceManager.Compensator
    Clerk
    System.EnterpriseServices.CompensatingResourceManager.Clerk))

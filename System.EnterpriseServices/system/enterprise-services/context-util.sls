(library (system enterprise-services context-util)
  (export is?
          context-util?
          disable-commit
          is-default-context?
          get-named-property
          is-caller-in-role?
          set-complete
          set-named-property
          set-abort
          enable-commit
          activity-id
          application-id
          application-instance-id
          context-id
          deactivate-on-return?-get
          deactivate-on-return?-set!
          deactivate-on-return?-update!
          is-in-transaction?
          is-security-enabled?
          my-transaction-vote-get
          my-transaction-vote-set!
          my-transaction-vote-update!
          partition-id
          transaction
          system-transaction
          transaction-id)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.EnterpriseServices.ContextUtil a))
  (define (context-util? a)
    (clr-is System.EnterpriseServices.ContextUtil a))
  (define-method-port
    disable-commit
    System.EnterpriseServices.ContextUtil
    DisableCommit
    (static: System.Void))
  (define-method-port
    is-default-context?
    System.EnterpriseServices.ContextUtil
    IsDefaultContext
    (static: System.Boolean))
  (define-method-port
    get-named-property
    System.EnterpriseServices.ContextUtil
    GetNamedProperty
    (static: System.Object System.String))
  (define-method-port
    is-caller-in-role?
    System.EnterpriseServices.ContextUtil
    IsCallerInRole
    (static: System.Boolean System.String))
  (define-method-port
    set-complete
    System.EnterpriseServices.ContextUtil
    SetComplete
    (static: System.Void))
  (define-method-port
    set-named-property
    System.EnterpriseServices.ContextUtil
    SetNamedProperty
    (static: System.Void System.String System.Object))
  (define-method-port
    set-abort
    System.EnterpriseServices.ContextUtil
    SetAbort
    (static: System.Void))
  (define-method-port
    enable-commit
    System.EnterpriseServices.ContextUtil
    EnableCommit
    (static: System.Void))
  (define-field-port
    activity-id
    #f
    #f
    (static: property:)
    System.EnterpriseServices.ContextUtil
    ActivityId
    System.Guid)
  (define-field-port
    application-id
    #f
    #f
    (static: property:)
    System.EnterpriseServices.ContextUtil
    ApplicationId
    System.Guid)
  (define-field-port
    application-instance-id
    #f
    #f
    (static: property:)
    System.EnterpriseServices.ContextUtil
    ApplicationInstanceId
    System.Guid)
  (define-field-port
    context-id
    #f
    #f
    (static: property:)
    System.EnterpriseServices.ContextUtil
    ContextId
    System.Guid)
  (define-field-port
    deactivate-on-return?-get
    deactivate-on-return?-set!
    deactivate-on-return?-update!
    (static: property:)
    System.EnterpriseServices.ContextUtil
    DeactivateOnReturn
    System.Boolean)
  (define-field-port
    is-in-transaction?
    #f
    #f
    (static: property:)
    System.EnterpriseServices.ContextUtil
    IsInTransaction
    System.Boolean)
  (define-field-port
    is-security-enabled?
    #f
    #f
    (static: property:)
    System.EnterpriseServices.ContextUtil
    IsSecurityEnabled
    System.Boolean)
  (define-field-port
    my-transaction-vote-get
    my-transaction-vote-set!
    my-transaction-vote-update!
    (static: property:)
    System.EnterpriseServices.ContextUtil
    MyTransactionVote
    System.EnterpriseServices.TransactionVote)
  (define-field-port
    partition-id
    #f
    #f
    (static: property:)
    System.EnterpriseServices.ContextUtil
    PartitionId
    System.Guid)
  (define-field-port
    transaction
    #f
    #f
    (static: property:)
    System.EnterpriseServices.ContextUtil
    Transaction
    System.Object)
  (define-field-port
    system-transaction
    #f
    #f
    (static: property:)
    System.EnterpriseServices.ContextUtil
    SystemTransaction
    System.Transactions.Transaction)
  (define-field-port
    transaction-id
    #f
    #f
    (static: property:)
    System.EnterpriseServices.ContextUtil
    TransactionId
    System.Guid))

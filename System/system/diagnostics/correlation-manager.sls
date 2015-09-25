(library (system diagnostics correlation-manager)
  (export is?
          correlation-manager?
          stop-logical-operation
          start-logical-operation
          activity-id-get
          activity-id-set!
          activity-id-update!
          logical-operation-stack)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.CorrelationManager a))
  (define (correlation-manager? a)
    (clr-is System.Diagnostics.CorrelationManager a))
  (define-method-port
    stop-logical-operation
    System.Diagnostics.CorrelationManager
    StopLogicalOperation
    (System.Void))
  (define-method-port
    start-logical-operation
    System.Diagnostics.CorrelationManager
    StartLogicalOperation
    (System.Void System.Object)
    (System.Void))
  (define-field-port
    activity-id-get
    activity-id-set!
    activity-id-update!
    (property:)
    System.Diagnostics.CorrelationManager
    ActivityId
    System.Guid)
  (define-field-port
    logical-operation-stack
    #f
    #f
    (property:)
    System.Diagnostics.CorrelationManager
    LogicalOperationStack
    System.Collections.Stack))
